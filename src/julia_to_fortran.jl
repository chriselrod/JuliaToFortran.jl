prefix(::Type{Float32}) = Symbol()
prefix(::Type{Float64}) = :d
prefix(::Type{Complex{Float32}}) = :c
prefix(::Type{Complex{Float64}}) = :z
prefix(::Any) = Symbol()

const spell_out_greek = Dict{String,String}(
    "α" => "alpha",
    "Α" => "capitol_alpha",
    "β" => "beta",
    "Β" => "capitol_beta",
    "π" => "pi",
    "Π" => "capitol_pi",
    "σ" => "sigma",
    "Σ" => "capitol_sigma",
    "λ" => "lambda",
    "Λ" => "capitol_lambda",
    "γ" => "gamma",
    "Γ" => "capitol_gamma",
    "δ" => "delta",
    "Δ" => "capitol_delta",
    "ϵ" => "epsilon_err",
    "Ε" => "capitol_epsilon_err",
    "ζ" => "zeta",
    "Ζ" => "capitol_zeta",
    "η" => "eta",
    "Η" => "capitol_eta",
    "θ" => "theta",
    "Θ" => "capitol_theta",
    "ι" => "iota",
    "Ι" => "capitol_iota",
    "κ" => "kappa",
    "Κ" => "capitol_kappa",
    "ν" => "nu",
    "ξ" => "xi",
    "Ξ" => "capitol_xi",
    "ρ" => "rho",
    "Ρ" => "capitol_rho",
    "τ" => "tau",
    "Τ" => "capitol_tau",
    "υ" => "upsilon",
    "Υ" => "capitol_upsilon",
    "ϕ" => "phi",
    "Φ" => "capitol_phi",
    "χ" => "chi",
    "Χ" => "capitol_chi",
    "ψ" => "psi",
    "Ψ" => "capitol_psi",
    "ω" => "omega",
    "Ω" => "capitol_omega",
    "ℯ" => "euler",
    "₀" => "0",
    "₁" => "1",
    "₂" => "2",
    "₃" => "3",
    "₄" => "4",
    "₅" => "5",
    "₆" => "6",
    "₇" => "7",
    "₈" => "8",
    "₉" => "9",
    "⁰" => "_zeroth",
    "¹" => "_first",
    "²" => "_second",
    "³" => "_third",
    "⁴" => "_fourth",
    "⁵" => "_fifth",
    "⁶" => "_sixth",
    "⁷" => "_seventh",
    "⁸" => "_eight",
    "⁹" => "_ninth",
    "ₐ" => "a",
    "ₑ" => "e",
    "ᵢ" => "i",
    "ₖ" => "k",
    "ⱼ" => "j",
    "ₗ" => "l",
    "ₘ" => "m",
    "ₙ" => "n",
    "ₒ" => "o",
    "ₚ" => "p",
    "ᵣ" => "r",
    "ₕ" => "h",
    "ₛ" => "s",
    "ₜ" => "t",
    "ᵤ" => "u",
    "ᵥ" => "v",
    "ₓ" => "x"
)
const greek_regex_match = r"α|Α|β|Β|π|Π|σ|Σ|λ|Λ|γ|Γ|δ|Δ|ϵ|Ε|ζ|Ζ|η|Η|θ|Θ|ι|Ι|κ|Κ|ν|ξ|Ξ|ρ|Ρ|τ|Τ|υ|Υ|ϕ|Φ|χ|Χ|ψ|Ψ|ω|Ω|ℯ|₀|₁|₂|₃|₄|₅|₆|₇|₈|₉|⁰|¹|²|³|⁴|⁵|⁶|⁷|⁸|⁹|ₐ|ₑ|ᵢ|ₖ|ⱼ|ₗ|ₘ|ₙ|ₒ|ₚ|ᵣ|ₕ|ₛ|ₜ|ᵤ|ᵥ|ₓ"

remove_unicode(str) = replace(str, greek_regex_match, m -> spell_out_greek[m])

# const doloop_regex = r" enddo\n\s+end"
for_to_do_loops(str) = replace(replace(str, "for", "do"), r"    enddo\n\s+end", "end do")
strip_doublebreaks(str) = replace(str, r"\n\s+\n", "\n")
clip_ends(str) = str[8:end-4]
clean_fortran_string(str) = str |> strip_doublebreaks |> clip_ends |> for_to_do_loops |> remove_unicode


# function translate(expr::Expr, ::Type{StaticArrays.SArray{Tuple{N},Float64,1,N}})  where N
#     @show expr
#     Expr(:vect, expr.args[2].args...), 0
# end
function translate(func::Symbol, return_type)::Tuple{Symbol,Int}
    get(FortranIntrinsics, (func, return_type)) do 
        if func == :+ || func == :- || func == :*
            return func, 0
        elseif func == :/ #What if inputs are integers?
            return func, 0
        elseif func == :^
            return :power, 0 #define a macro
        end
        Symbol(prefix(return_type), func), 0
    end
end

const FortranIntrinsics = Dict{Tuple{Symbol,DataType},Tuple{Symbol,Int}}(
    (:round, Float32) => (:aint, 4),
    (:round, Float64) => (:aint, 8),
    (:imag, Float32) => (:aimag, 0),
    (:besselj0, Float64) => (:bessel_j0, 0),
    (:besselj1, Float64) => (:bessel_j1, 0),
    (:besselj, Float64) => (:bessel_jn, 0),
    (:bessely0, Float64) => (:bessel_y0, 0),
    (:bessely1, Float64) => (:bessel_y1, 0),
    (:bessely, Float64) => (:bessel_yn, 0),
    (:complex, Float32) => (:complex, 0),
    (:complex, Float64) => (:complex, 0),
    (:conj, Float32) => (:conjg, 0),
    (:conj, Float64) => (:dconjg, 0),
    (:cot, Float32) => (:cotan, 0),
    (:cot, Float64) => (:dcotan, 0),
    (:cotd, Float32) => (:cotand, 0),
    (:cotd, Float64) => (:dcotand, 0),
    (:dot, Float32) => (:dot_product, 0),
    (:dot, Float64) => (:dot_product, 0),
    (:dot, Complex{Float32}) => (:dot_product, 0),
    (:dot, Complex{Float64}) => (:dot_product, 0),
    (:dot, Complex{Float64}) => (:dot_product, 0),
    (:eps, Float32) => (:epsilon, 0),
    (:eps, Float64) => (:epsilon, 0),
    (:Int, Int32) => (:int, 4),
    (:Int, Int64) => (:int, 8),
    (:length, Int32) => (:size, 4),
    (:length, Int64) => (:size, 8),
    (:log, Float32) => (:alog, 0),
    (:log10, Float32) => (:alog10, 0),
    (:lgamma, Float32) => (:algama, 0),
    (:lgamma, Float64) => (:dlgama, 0),
    (:max, Float64) => (:max, 0),
    (:maximum, Float64) => (:maxval, 0),
    (:indmax, Float64) => (:maxloc, 0),
    (:min, Float64) => (:min, 0),
    (:minimum, Float64) => (:minval, 0),
    (:indmin, Float64) => (:minloc, 0),
    (:mod, Float32) => (:modulus, 0),
    (:mod, Float64) => (:modulus, 0),
    (:precision, Int32) => (:precision, 0),
    (:sum, Int32) => (:sum, 0),
    (:sum, Int64) => (:sum, 0),
    (:sum, Float64) => (:sum, 0),
    (:sum, Complex{Float32}) => (:sum, 0),
    (:sum, Complex{Float64}) => (:sum, 0),
    (:size, Int32) => (:ubound, 3),#Not even possible?
    (:size, Int64) => (:ubound, 8)
)


const OrderSwap = Dict{Tuple{Symbol,DataType},Tuple{String,String}}(
    (:copysign, Int32) => ("sign(", ")"),
    (:copysign, Int64) => ("sign(", ")"),
    (:copysign, Float32) => ("sign(", ")"),
    (:copysign, Float64) => ("sign(", ")"),
)


const supported_types = Tuple{DataType,String}[(Float32,"real(4)"), (Float64,"real(8)"), (Int32,"integer(4)"), (Int64,"integer(8)"), (Complex{Float32},"complex(4)"), (Complex{Float64},"complex(8)")]

for (t, s) in supported_types
    @eval sized_matrix_type(::Type{<:SVector{N,$t}}) where N = $s * ", dimension($N)"
    @eval sized_matrix_type(::Type{<:SMatrix{M,N,$t}}) where {M,N} = $s * ", dimension($M,$N)"
    @eval sized_matrix_type(::Type{<:StaticArrays.SArray{Tuple{M,N,O},$t}}) where {M,N,O} = $s * ", dimension($M,$N,$O)"
    @eval sized_matrix_type(::Type{<:StaticArrays.SArray{Tuple{M,N,O,P},$t}}) where {M,N,O,P} = $s * ", dimension($M,$N,$O,$P)"
    @eval sized_matrix_type(::Type{<:StaticArrays.SArray{Tuple{M,N,O,P,Q},$t}}) where {M,N,O,P,Q} = $s * ", dimension($M,$N,$O,$P,$Q)"
    @eval sized_matrix_type(::Type{<:StaticArrays.SArray{Tuple{M,N,O,P,Q,R},$t}}) where {M,N,O,P,Q,R} = $s * ", dimension($M,$N,$O,$P,$Q,$R)"
    @eval sized_matrix_type(::Type{<:StaticArrays.SArray{Tuple{M,N,O,P,Q,R,S},$t}}) where {M,N,O,P,Q,R,S} = $s * ", dimension($M,$N,$O,$P,$Q,$R,$S)"

    @eval sized_matrix_type(::Type{<:NTuple{N,$t}}) where N = $s * ", dimension($N)"
    # @eval sized_matrix_type(::Type{<:NTuple{N,$t}}) where N = $s * ", dimension($N)"

    @eval sized_matrix_type(::Type{<:TriangularMatrices.AbstractTriangularMatrix{$t,N,L}}) where {N,L} = $s * ", dimension($L)"
    @eval sized_matrix_type(::Type{<:TriangularMatrices.AbstractSymmetricMatrix{$t,N,L}}) where {N,L} = $s * ", dimension($L)"
    @eval sized_matrix_type(::Type{<:TriangularMatrices.MutableRecursiveMatrix{$t,M,N,L}}) where {M,N,L} = $s * ", dimension($L)"
end

#     @eval sized_matrix_type(::Type{<:MutableRecursiveMatrix{$t,M,N,L}}) where {M,N,L} = $s * ", dimension($L)"
# end

function translate_type(t::DataType)
    local out::String
    if t == Float32
        out = "real(4)"
    elseif t == Float64
        out = "real(8)"
    elseif t == Int32
        out = "integer(4)"
    elseif t == Int64
        out = "integer(8)"
    elseif t <: NTuple
        out = sized_matrix_type(t)
    elseif t <: StaticArrays.SArray
        out = sized_matrix_type(t)
    elseif t <: TriangularMatrices.TriangularMatrix
        out = sized_matrix_type(t)
    elseif t <: TriangularMatrices.SymmetricMMatrix
        out = sized_matrix_type(t)
    elseif t <: TriangularMatrices.MutableRecursiveMatrix
        out = sized_matrix_type(t)
    else
        throw("Could not match type $t.")
    end
    out
end


function symbol_vector_to_string(v::Vector{Symbol})
    if length(v) == 1
        return string(v[1])
    elseif length(v) < 10
        return reduce((x,y) -> string(x)*", "*string(y), v)
    end
    out = string(v[1]) * ", "
    for i ∈ 2:length(v)-1
        out *= string(v[i]) * ", "
        i % 7 == 0 && (out *= "\&\n            ")
    end
    out *= string(v[end])
    out
end

function add_fortran_types!(types::Dict{Union{Symbol,Expr},DataType}, arguments, d::Dict{DataType,Vector{Symbol}}, intent = "")
    out = ""
    for k ∈ keys(d)
        syms = d[k]
        append!(arguments, syms)
        out *= "    " * translate_type(k) * intent * " :: " * symbol_vector_to_string(syms) * "\n"
        for sym ∈ syms
            types[sym] = k
        end
    end
    out
end
function add_fortran_types(d::Dict{DataType,Vector{Symbol}}, intent = "")
    out = ""
    for k ∈ keys(d)
        syms = d[k]
        out *= "    " * translate_type(k) * intent * " :: " * symbol_vector_to_string(syms) * "\n"
    end
    out
end

function update_work_vars!(work_vars, types, x)
    if !haskey(work_vars, types[x.args[2]])
        types[x.args[1]] = types[x.args[2]]
        work_vars[types[x.args[2]]] = Symbol[x.args[1]]
    else
        type_vec = work_vars[types[x.args[2]]]
        x.args[1] ∉ type_vec && push!(type_vec, x.args[1])
    end
    nothing
end

const broadcast_ops = (:.+, :.-, :.*, :./)
const translate_broadcast = Dict{Symbol,Symbol}(
    :.+ => :+,
    :.- => :-,
    :.* => :*,
    :./ => :/
)
function remove_broadcast(x)
    if isexpr(x, :call) && x.args[1] ∈ broadcast_ops
        x.args[1] = translate_broadcast[x.args[1]]
    elseif isexpr(x, :.=)
        x.head = :(=)
    end
    x
end

#define power(X, Y) ((X) ** (Y))

# Core.Inference.return_type
function translate_expr(expr::Expr, outputs::Dict{DataType,Vector{Symbol}} = Dict{DataType,Vector{Symbol}}(), inputs::Dict{DataType,Vector{Symbol}} = Dict{DataType,Vector{Symbol}}(), size_inputs = Dict{DataType,Vector{Symbol}}(), inout = Dict{DataType,Vector{Symbol}}())


    arguments = Symbol[]
    types = Dict{Union{Symbol,Expr},DataType}()
    FortranCode = add_fortran_types!(types, arguments, size_inputs, ", intent(in)")
    FortranCode *= add_fortran_types!(types, arguments, inputs, ", intent(in)")
    FortranCode *= add_fortran_types!(types, arguments, inout, ", intent(inout)")
    FortranCode *= add_fortran_types!(types, arguments, outputs, ", intent(out)")


    work_vars = Dict{DataType,Vector{Symbol}}()

    num_blocks = 0

    q = MacroTools.postwalk(x -> begin
        if isa(x, Expr)
            x.head == :line && return Symbol() # :! We want to skip line annotations
            if x.head == :call # if the expression is a call, translate it.
                # @show x
                if x.args[1] == :*

                    # @show x

                    if types[x.args[2]] <: AbstractMatrix && types[x.args[3]] <: AbstractMatrix
                        x.args[1] = :matmul
                        println("Shouldn't see this atm.")
                        types[x] = Core.Inference.return_type(*, ntuple(i -> types[x.args[i+1]], length(x.args)-1))
                    elseif types[x.args[2]] <: AbstractMatrix && types[x.args[3]] <: AbstractVector
                        x.args[1] = :matmul
                    elseif types[x.args[3]] <: AbstractMatrix && types[x.args[2]] <: AbstractVector#then second arg isn't
                        x.args[1] = :matmul
                    elseif types[x.args[3]] <: AbstractVector && types[x.args[2]] <: AbstractVector#then second arg isn't
                        x.args[1] = :dot_product
                        types[x] = promote_type(eltype(types[x.args[2]]),eltype(types[x.args[3]]))
                    #Hope this works. If not, gemv, double do loops, or a do loop of dot products?
                    else
                        # @show x
                        types[x] = Core.Inference.return_type(*, ntuple(i -> types[x.args[i+1]], length(x.args)-1))
                    end

                    # @show x

                    # x.args[1] == :dot_product && (x.args[2] = deepcopy(x.args[2].args[2]) )

                    # @show x

                    
                    # @show x
                        
                elseif isa(x.args[1], Expr) && x.args[1].args[1] == :SVector
                    popfirst!(x.args)
                    x.head = :vect
                    x.args = deepcopy(x.args[1].args)
                    types[x] = SVector{length(x.args),types[x.args[1]]}
                elseif isa(x.args[1], Expr) && x.args[1].args[1] == :NTuple
                    popfirst!(x.args)
                    x.head = :vect
                    x.args = deepcopy(x.args[1].args)
                    types[x] = NTuple{length(x.args),types[x.args[1]]}
                else
                    local return_type::DataType
                    try
                        return_type = get!(() -> Core.Inference.return_type(eval(x.args[1]), ntuple(i -> begin
                            xarg = x.args[i+1]
                            (isa(xarg, Symbol) || isa(xarg, Expr)) ? types[xarg] : typeof(xarg)
                        end, length(x.args)-1)), types, x)
                    catch err
                        @show x
                        @show types
                        @show ntuple(i -> x.args[i+1], length(x.args)-1)
                        rethrow(err)
                    end
                    # @show x, return_type
                    x.args[1], kind = translate(x.args[1], return_type)
                    kind != 0 && push!(x.args, kind)
                    types[x] = return_type
                end

            elseif x.head == :tuple
                types[x] = NTuple{length(x.args), types[x.args[1]]}
            elseif x.head == :for
                push!(x.args[2].args, :enddo)
            elseif x.head == :ref
                types[x] = eltype(types[x.args[1]])
            elseif x.head == :(:)
                x.head = :call
                unshift!(x.args, :iterrange)
                types[x] = Int
            elseif x.head == Symbol("'") ##We're transposing. Lets not allocate a temporary...
                # Currently not supported.
                # x.head = :call
                # unshift!(x.args, :transpose)
                # types[x] = types[x.args[2]]
                x.head = deepcopy(x.args[1].head)
                x.args = deepcopy(x.args[1].args)
            elseif x.head == Symbol("=") && isa(x.args[1], Symbol)
                types[x.args[1]] = types[x.args[2]]
                update_work_vars!(work_vars, types, x)
            elseif x.head == :+=
                x.head = Symbol("=")
                x.args[2] = :( $(x.args[1]) + ( $(x.args[2]) ) )
                types[x.args[2]] = types[x.args[1]]
                isa(x.args[1], Symbol) && update_work_vars!(work_vars, types, x)
            elseif x.head == :-=
                x.head = Symbol("=")
                x.args[2] = :( $(x.args[1]) - ( $(x.args[2]) ) )
                types[x.args[2]] = types[x.args[1]]
                isa(x.args[1], Symbol) && update_work_vars!(work_vars, types, x)
            elseif x.head == :*=
                x.head = Symbol("=")
                x.args[2] = :( $(x.args[1]) * ( $(x.args[2]) ) )
                types[x.args[2]] = types[x.args[1]]
                isa(x.args[1], Symbol) && update_work_vars!(work_vars, types, x)
            elseif x.head == :/=
                x.head = Symbol("=")
                x.args[2] = :( $(x.args[1]) / ( $(x.args[2]) ) )
                types[x.args[2]] = types[x.args[1]]
                isa(x.args[1], Symbol) && update_work_vars!(work_vars, types, x)
            elseif x == :π
                x = Symbol(Float64(π))
            elseif x == :ℯ
                x = Symbol(Float64(ℯ))
            elseif x.head == :macrocall
                x = x.args[2]
            elseif x.head == :block
                num_blocks += 1
            end
        end        
        x
    end, expr)
    q = MacroTools.postwalk(x -> isexpr(x, :ref) ? (x.head = :call; x) : remove_broadcast(x), q)

    if num_blocks > 1
        squashed = MacroTools.postwalk(x -> isexpr(x,:block) && length(x.args) > 1 ? :($[x.args...]) : x, q)
        finalq = MacroTools.@q begin end
        for squashed_block ∈ squashed
            isa(squashed_block, AbstractArray) ? append!(finalq.args, squashed_block) : push!(finalq.args, squashed_block)
        end
    else
        finalq = q
    end
    FortranCode *= add_fortran_types(work_vars)

    FortranCode *= clean_fortran_string(string(finalq))
    FortranCode, arguments
end
function create_subroutine(name::String, expr::Expr; outputs::Dict{DataType,Vector{Symbol}} = Dict{DataType,Vector{Symbol}}(), inputs::Dict{DataType,Vector{Symbol}} = Dict{DataType,Vector{Symbol}}(), size_inputs = Dict{DataType,Vector{Symbol}}(), inout = Dict{DataType,Vector{Symbol}}())
    FortranCode, arguments = translate_expr(expr, outputs, inputs, size_inputs, inout)
    FortranCode = "subroutine $name($(symbol_vector_to_string(arguments)))\n" * FortranCode * "\nend subroutine $name"
    FortranCode
end



function create_module(module_name, body)
    """
    module $module_name

    #define iterrange(X,Y) (X),(Y)
    #define power(X,Y) (X) ** (Y)

    implicit none

    contains


    """ * body * """


    end module $module_name
    """
end




