@[Link("igraph")]
@[Link("glpk")]
@[Link("stdarg")]
@[Link("c++")]
lib IGraph
  VS_ALL = 0
  VS_ADJ = 1
  VS_NONE = 2
  VS_1 = 3
  VS_VECTORPTR = 4
  VS_VECTOR = 5
  VS_SEQ = 6
  VS_NONADJ = 7
  VIT_SEQ = 0
  VIT_VECTOR = 1
  VIT_VECTORPTR = 2
  ES_ALL = 0
  ES_ALLFROM = 1
  ES_ALLTO = 2
  ES_INCIDENT = 3
  ES_NONE = 4
  ES_1 = 5
  ES_VECTORPTR = 6
  ES_VECTOR = 7
  ES_SEQ = 8
  ES_PAIRS = 9
  ES_PATH = 10
  ES_MULTIPAIRS = 11
  EIT_SEQ = 0
  EIT_VECTOR = 1
  EIT_VECTORPTR = 2
  THREAD_SAFE = 1
  fun version = igraph_version(version_string : LibC::Char**, major : LibC::Int*, minor : LibC::Int*, subminor : LibC::Int*) : LibC::Int
  fun free = igraph_free(p : Void*) : LibC::Int
  fun error_handler_abort = igraph_error_handler_abort
  fun error_handler_ignore = igraph_error_handler_ignore
  fun error_handler_printignore = igraph_error_handler_printignore
  fun set_error_handler = igraph_set_error_handler(new_handler : LibC::Char*, LibC::Char*, LibC::Int, LibC::Int -> Void) : LibC::Char*, LibC::Char*, LibC::Int, LibC::Int -> Void
  Success = 0
  Failure = 1
  Enomem = 2
  Parseerror = 3
  Einval = 4
  Exists = 5
  Einvevector = 6
  Einvvid = 7
  Nonsquare = 8
  Einvmode = 9
  Efile = 10
  Unimplemented = 12
  Interrupted = 13
  Diverged = 14
  ArpackProd = 15
  ArpackNpos = 16
  ArpackNevnpos = 17
  ArpackNcvsmall = 18
  ArpackNonposi = 19
  ArpackWhichinv = 20
  ArpackBmatinv = 21
  ArpackWorklsmall = 22
  ArpackTriderr = 23
  ArpackZerostart = 24
  ArpackModeinv = 25
  ArpackModebmat = 26
  ArpackIshift = 27
  ArpackNevbe = 28
  ArpackNofact = 29
  ArpackFailed = 30
  ArpackHowmny = 31
  ArpackHowmnys = 32
  ArpackEvdiff = 33
  ArpackShur = 34
  ArpackLapack = 35
  ArpackUnknown = 36
  Enegloop = 37
  Einternal = 38
  ArpackMaxit = 39
  ArpackNoshift = 40
  ArpackReorder = 41
  Edivzero = 42
  GlpEbound = 43
  GlpEroot = 44
  GlpEnopfs = 45
  GlpEnodfs = 46
  GlpEfail = 47
  GlpEmipgap = 48
  GlpEtmlim = 49
  GlpEstop = 50
  Eattributes = 51
  Eattrcombine = 52
  Elapack = 53
  Edrl = 54
  Eoverflow = 55
  Eglp = 56
  Cputime = 57
  Eunderflow = 58
  fun error = igraph_error(reason : LibC::Char*, file : LibC::Char*, line : LibC::Int, errno : LibC::Int) : LibC::Int
  fun errorf = igraph_errorf(reason : LibC::Char*, file : LibC::Char*, line : LibC::Int, errno : LibC::Int, ...) : LibC::Int
  fun errorvf = igraph_errorvf(reason : LibC::Char*, file : LibC::Char*, line : LibC::Int, errno : LibC::Int, ap : VaList) : LibC::Int
  alias VaList = LibC::VaList
  fun strerror = igraph_strerror(errno : LibC::Int) : LibC::Char*
  struct IProtectedptr
    all : LibC::Int
    ptr : Void*
    func : Void* -> Void
  end
  fun finally_real = IGRAPH_FINALLY_REAL(func : Void* -> Void, ptr : Void*)
  fun finally_clean = IGRAPH_FINALLY_CLEAN(num : LibC::Int)
  fun finally_free = IGRAPH_FINALLY_FREE
  fun finally_stack_size = IGRAPH_FINALLY_STACK_SIZE : LibC::Int
  fun set_warning_handler = igraph_set_warning_handler(new_handler : LibC::Char*, LibC::Char*, LibC::Int, LibC::Int -> Void) : LibC::Char*, LibC::Char*, LibC::Int, LibC::Int -> Void
  fun warning_handler_ignore = igraph_warning_handler_ignore
  fun warning_handler_print = igraph_warning_handler_print
  fun warning = igraph_warning(reason : LibC::Char*, file : LibC::Char*, line : LibC::Int, errno : LibC::Int) : LibC::Int
  fun warningf = igraph_warningf(reason : LibC::Char*, file : LibC::Char*, line : LibC::Int, errno : LibC::Int, ...) : LibC::Int
  fun real_printf = igraph_real_printf(val : RealT) : LibC::Int
  alias RealT = LibC::Double
  fun real_fprintf = igraph_real_fprintf(file : File*, val : RealT) : LibC::Int
  struct X__Sfile
    _p : UInt8*
    _r : LibC::Int
    _w : LibC::Int
    _flags : LibC::Short
    _file : LibC::Short
    _bf : X__Sbuf
    _lbfsize : LibC::Int
    _cookie : Void*
    _close : Void* -> LibC::Int
    _read : Void*, LibC::Char*, LibC::Int -> LibC::Int
    _seek : Void*, FposT, LibC::Int -> FposT
    _write : Void*, LibC::Char*, LibC::Int -> LibC::Int
    _ub : X__Sbuf
    _extra : X__Sfilex*
    _ur : LibC::Int
    _ubuf : UInt8[3]
    _nbuf : UInt8[1]
    _lb : X__Sbuf
    _blksize : LibC::Int
    _offset : FposT
  end
  type File = X__Sfile
  struct X__Sbuf
    _base : UInt8*
    _size : LibC::Int
  end
  alias X__Int64T = LibC::LongLong
  alias X__DarwinOffT = X__Int64T
  alias FposT = X__DarwinOffT
  alias X__Sfilex = Void
  fun real_snprintf = igraph_real_snprintf(str : LibC::Char*, size : LibC::SizeT, val : RealT) : LibC::Int
  fun real_printf_precise = igraph_real_printf_precise(val : RealT) : LibC::Int
  fun real_fprintf_precise = igraph_real_fprintf_precise(file : File*, val : RealT) : LibC::Int
  fun real_snprintf_precise = igraph_real_snprintf_precise(str : LibC::Char*, size : LibC::SizeT, val : RealT) : LibC::Int
  fun i_fdiv = igraph_i_fdiv(a : LibC::Double, b : LibC::Double) : LibC::Double
  fun finite = igraph_finite(x : LibC::Double) : LibC::Int
  fun is_nan = igraph_is_nan(x : LibC::Double) : LibC::Int
  fun is_inf = igraph_is_inf(x : LibC::Double) : LibC::Int
  fun is_posinf = igraph_is_posinf(x : LibC::Double) : LibC::Int
  fun is_neginf = igraph_is_neginf(x : LibC::Double) : LibC::Int
  struct RngTypeT
    name : LibC::Char*
    min : LibC::ULong
    max : LibC::ULong
    init : Void** -> LibC::Int
    destroy : Void* -> Void
    seed : Void*, LibC::ULong -> LibC::Int
    get : Void* -> LibC::ULong
    get_real : Void* -> RealT
    get_norm : Void* -> RealT
    get_geom : Void*, RealT -> RealT
    get_binom : Void*, LibC::Long, RealT -> RealT
    get_exp : Void*, RealT -> RealT
  end
  struct RngT
    type : RngTypeT*
    state : Void*
    def : LibC::Int
  end
  fun rng_init = igraph_rng_init(rng : RngT*, type : RngTypeT*) : LibC::Int
  fun rng_destroy = igraph_rng_destroy(rng : RngT*)
  fun rng_seed = igraph_rng_seed(rng : RngT*, seed : LibC::ULong) : LibC::Int
  fun rng_max = igraph_rng_max(rng : RngT*) : LibC::ULong
  fun rng_min = igraph_rng_min(rng : RngT*) : LibC::ULong
  fun rng_name = igraph_rng_name(rng : RngT*) : LibC::Char*
  fun rng_get_integer = igraph_rng_get_integer(rng : RngT*, l : LibC::Long, h : LibC::Long) : LibC::Long
  fun rng_get_normal = igraph_rng_get_normal(rng : RngT*, m : RealT, s : RealT) : RealT
  fun rng_get_unif = igraph_rng_get_unif(rng : RngT*, l : RealT, h : RealT) : RealT
  fun rng_get_unif01 = igraph_rng_get_unif01(rng : RngT*) : RealT
  fun rng_get_geom = igraph_rng_get_geom(rng : RngT*, p : RealT) : RealT
  fun rng_get_binom = igraph_rng_get_binom(rng : RngT*, n : LibC::Long, p : RealT) : RealT
  fun rng_get_exp = igraph_rng_get_exp(rng : RngT*, rate : RealT) : RealT
  fun rng_get_int31 = igraph_rng_get_int31(rng : RngT*) : LibC::ULong
  fun rng_get_exp = igraph_rng_get_exp(rng : RngT*, rate : RealT) : RealT
  fun rng_default = igraph_rng_default : RngT*
  fun rng_set_default = igraph_rng_set_default(rng : RngT*)
  fun progress_handler_stderr = igraph_progress_handler_stderr : LibC::Int
  fun set_progress_handler = igraph_set_progress_handler(new_handler : ProgressHandlerT) : LibC::Char*, RealT, Void* -> LibC::Int
  alias ProgressHandlerT = LibC::Char*, RealT, Void* -> LibC::Int
  fun progress = igraph_progress(message : LibC::Char*, percent : RealT, data : Void*) : LibC::Int
  fun progressf = igraph_progressf(message : LibC::Char*, percent : RealT, data : Void*, ...) : LibC::Int
  fun status_handler_stderr = igraph_status_handler_stderr : LibC::Int
  fun set_status_handler = igraph_set_status_handler(new_handler : StatusHandlerT) : LibC::Char*, Void* -> LibC::Int
  alias StatusHandlerT = LibC::Char*, Void* -> LibC::Int
  fun status = igraph_status(message : LibC::Char*, data : Void*) : LibC::Int
  fun statusf = igraph_statusf(message : LibC::Char*, data : Void*, ...) : LibC::Int
  struct ComplexT
    dat : RealT[2]
  end
  fun complex = igraph_complex(x : RealT, y : RealT) : ComplexT
  fun complex_polar = igraph_complex_polar(r : RealT, theta : RealT) : ComplexT
  fun complex_eq_tol = igraph_complex_eq_tol(z1 : ComplexT, z2 : ComplexT, tol : RealT) : BoolT
  alias BoolT = LibC::Int
  fun complex_mod = igraph_complex_mod(z : ComplexT) : RealT
  fun complex_arg = igraph_complex_arg(z : ComplexT) : RealT
  fun complex_abs = igraph_complex_abs(z : ComplexT) : RealT
  fun complex_logabs = igraph_complex_logabs(z : ComplexT) : RealT
  fun complex_add = igraph_complex_add(z1 : ComplexT, z2 : ComplexT) : ComplexT
  fun complex_sub = igraph_complex_sub(z1 : ComplexT, z2 : ComplexT) : ComplexT
  fun complex_mul = igraph_complex_mul(z1 : ComplexT, z2 : ComplexT) : ComplexT
  fun complex_div = igraph_complex_div(z1 : ComplexT, z2 : ComplexT) : ComplexT
  fun complex_add_real = igraph_complex_add_real(z : ComplexT, x : RealT) : ComplexT
  fun complex_add_imag = igraph_complex_add_imag(z : ComplexT, y : RealT) : ComplexT
  fun complex_sub_real = igraph_complex_sub_real(z : ComplexT, x : RealT) : ComplexT
  fun complex_sub_imag = igraph_complex_sub_imag(z : ComplexT, y : RealT) : ComplexT
  fun complex_mul_real = igraph_complex_mul_real(z : ComplexT, x : RealT) : ComplexT
  fun complex_mul_imag = igraph_complex_mul_imag(z : ComplexT, y : RealT) : ComplexT
  fun complex_div_real = igraph_complex_div_real(z : ComplexT, x : RealT) : ComplexT
  fun complex_div_imag = igraph_complex_div_imag(z : ComplexT, y : RealT) : ComplexT
  fun complex_conj = igraph_complex_conj(z : ComplexT) : ComplexT
  fun complex_neg = igraph_complex_neg(z : ComplexT) : ComplexT
  fun complex_inv = igraph_complex_inv(z : ComplexT) : ComplexT
  fun complex_sqrt = igraph_complex_sqrt(z : ComplexT) : ComplexT
  fun complex_sqrt_real = igraph_complex_sqrt_real(x : RealT) : ComplexT
  fun complex_exp = igraph_complex_exp(z : ComplexT) : ComplexT
  fun complex_pow = igraph_complex_pow(z1 : ComplexT, z2 : ComplexT) : ComplexT
  fun complex_pow_real = igraph_complex_pow_real(z : ComplexT, x : RealT) : ComplexT
  fun complex_log = igraph_complex_log(z : ComplexT) : ComplexT
  fun complex_log10 = igraph_complex_log10(z : ComplexT) : ComplexT
  fun complex_log_b = igraph_complex_log_b(z : ComplexT, b : ComplexT) : ComplexT
  fun complex_sin = igraph_complex_sin(z : ComplexT) : ComplexT
  fun complex_cos = igraph_complex_cos(z : ComplexT) : ComplexT
  fun complex_tan = igraph_complex_tan(z : ComplexT) : ComplexT
  fun complex_sec = igraph_complex_sec(z : ComplexT) : ComplexT
  fun complex_csc = igraph_complex_csc(z : ComplexT) : ComplexT
  fun complex_cot = igraph_complex_cot(z : ComplexT) : ComplexT
  struct VectorT
    stor_begin : RealT*
    stor_end : RealT*
    _end : RealT*
  end
  struct VectorLongT
    stor_begin : LibC::Long*
    stor_end : LibC::Long*
    _end : LibC::Long*
  end
  struct VectorCharT
    stor_begin : LibC::Char*
    stor_end : LibC::Char*
    _end : LibC::Char*
  end
  struct VectorBoolT
    stor_begin : BoolT*
    stor_end : BoolT*
    _end : BoolT*
  end
  struct VectorIntT
    stor_begin : LibC::Int*
    stor_end : LibC::Int*
    _end : LibC::Int*
  end
  struct VectorComplexT
    stor_begin : ComplexT*
    stor_end : ComplexT*
    _end : ComplexT*
  end
  fun vector_init = igraph_vector_init(v : VectorT*, size : LibC::Long) : LibC::Int
  fun vector_init_copy = igraph_vector_init_copy(v : VectorT*, data : RealT*, length : LibC::Long) : LibC::Int
  fun vector_init_seq = igraph_vector_init_seq(v : VectorT*, from : RealT, to : RealT) : LibC::Int
  fun vector_copy = igraph_vector_copy(to : VectorT*, from : VectorT*) : LibC::Int
  fun vector_destroy = igraph_vector_destroy(v : VectorT*)
  fun vector_capacity = igraph_vector_capacity(v : VectorT*) : LibC::Long
  fun vector_e = igraph_vector_e(v : VectorT*, pos : LibC::Long) : RealT
  fun vector_e_ptr = igraph_vector_e_ptr(v : VectorT*, pos : LibC::Long) : RealT*
  fun vector_set = igraph_vector_set(v : VectorT*, pos : LibC::Long, value : RealT)
  fun vector_tail = igraph_vector_tail(v : VectorT*) : RealT
  fun vector_null = igraph_vector_null(v : VectorT*)
  fun vector_fill = igraph_vector_fill(v : VectorT*, e : RealT)
  fun vector_view = igraph_vector_view(v : VectorT*, data : RealT*, length : LibC::Long) : VectorT*
  fun vector_copy_to = igraph_vector_copy_to(v : VectorT*, to : RealT*)
  fun vector_update = igraph_vector_update(to : VectorT*, from : VectorT*) : LibC::Int
  fun vector_append = igraph_vector_append(to : VectorT*, from : VectorT*) : LibC::Int
  fun vector_swap = igraph_vector_swap(v1 : VectorT*, v2 : VectorT*) : LibC::Int
  fun vector_swap_elements = igraph_vector_swap_elements(v : VectorT*, i : LibC::Long, j : LibC::Long) : LibC::Int
  fun vector_reverse = igraph_vector_reverse(v : VectorT*) : LibC::Int
  fun vector_shuffle = igraph_vector_shuffle(v : VectorT*) : LibC::Int
  fun vector_add_constant = igraph_vector_add_constant(v : VectorT*, plus : RealT)
  fun vector_scale = igraph_vector_scale(v : VectorT*, by : RealT)
  fun vector_add = igraph_vector_add(v1 : VectorT*, v2 : VectorT*) : LibC::Int
  fun vector_sub = igraph_vector_sub(v1 : VectorT*, v2 : VectorT*) : LibC::Int
  fun vector_mul = igraph_vector_mul(v1 : VectorT*, v2 : VectorT*) : LibC::Int
  fun vector_div = igraph_vector_div(v1 : VectorT*, v2 : VectorT*) : LibC::Int
  fun vector_cumsum = igraph_vector_cumsum(to : VectorT*, from : VectorT*) : LibC::Int
  fun vector_abs = igraph_vector_abs(v : VectorT*) : LibC::Int
  fun vector_all_e = igraph_vector_all_e(lhs : VectorT*, rhs : VectorT*) : BoolT
  fun vector_all_l = igraph_vector_all_l(lhs : VectorT*, rhs : VectorT*) : BoolT
  fun vector_all_g = igraph_vector_all_g(lhs : VectorT*, rhs : VectorT*) : BoolT
  fun vector_all_le = igraph_vector_all_le(lhs : VectorT*, rhs : VectorT*) : BoolT
  fun vector_all_ge = igraph_vector_all_ge(lhs : VectorT*, rhs : VectorT*) : BoolT
  fun vector_min = igraph_vector_min(v : VectorT*) : RealT
  fun vector_max = igraph_vector_max(v : VectorT*) : RealT
  fun vector_which_min = igraph_vector_which_min(v : VectorT*) : LibC::Long
  fun vector_which_max = igraph_vector_which_max(v : VectorT*) : LibC::Long
  fun vector_minmax = igraph_vector_minmax(v : VectorT*, min : RealT*, max : RealT*) : LibC::Int
  fun vector_which_minmax = igraph_vector_which_minmax(v : VectorT*, which_min : LibC::Long*, which_max : LibC::Long*) : LibC::Int
  fun vector_empty = igraph_vector_empty(v : VectorT*) : BoolT
  fun vector_size = igraph_vector_size(v : VectorT*) : LibC::Long
  fun vector_isnull = igraph_vector_isnull(v : VectorT*) : BoolT
  fun vector_sum = igraph_vector_sum(v : VectorT*) : RealT
  fun vector_sumsq = igraph_vector_sumsq(v : VectorT*) : RealT
  fun vector_prod = igraph_vector_prod(v : VectorT*) : RealT
  fun vector_isininterval = igraph_vector_isininterval(v : VectorT*, low : RealT, high : RealT) : BoolT
  fun vector_any_smaller = igraph_vector_any_smaller(v : VectorT*, limit : RealT) : BoolT
  fun vector_is_equal = igraph_vector_is_equal(lhs : VectorT*, rhs : VectorT*) : BoolT
  fun vector_maxdifference = igraph_vector_maxdifference(m1 : VectorT*, m2 : VectorT*) : RealT
  fun vector_contains = igraph_vector_contains(v : VectorT*, e : RealT) : BoolT
  fun vector_search = igraph_vector_search(v : VectorT*, from : LibC::Long, what : RealT, pos : LibC::Long*) : BoolT
  fun vector_binsearch = igraph_vector_binsearch(v : VectorT*, what : RealT, pos : LibC::Long*) : BoolT
  fun vector_binsearch2 = igraph_vector_binsearch2(v : VectorT*, what : RealT) : BoolT
  fun vector_clear = igraph_vector_clear(v : VectorT*)
  fun vector_resize = igraph_vector_resize(v : VectorT*, newsize : LibC::Long) : LibC::Int
  fun vector_resize_min = igraph_vector_resize_min(v : VectorT*) : LibC::Int
  fun vector_reserve = igraph_vector_reserve(v : VectorT*, size : LibC::Long) : LibC::Int
  fun vector_push_back = igraph_vector_push_back(v : VectorT*, e : RealT) : LibC::Int
  fun vector_pop_back = igraph_vector_pop_back(v : VectorT*) : RealT
  fun vector_insert = igraph_vector_insert(v : VectorT*, pos : LibC::Long, value : RealT) : LibC::Int
  fun vector_remove = igraph_vector_remove(v : VectorT*, elem : LibC::Long)
  fun vector_remove_section = igraph_vector_remove_section(v : VectorT*, from : LibC::Long, to : LibC::Long)
  fun vector_sort = igraph_vector_sort(v : VectorT*)
  fun vector_qsort_ind = igraph_vector_qsort_ind(v : VectorT*, inds : VectorT*, descending : BoolT) : LibC::Long
  fun vector_print = igraph_vector_print(v : VectorT*) : LibC::Int
  fun vector_printf = igraph_vector_printf(v : VectorT*, format : LibC::Char*) : LibC::Int
  fun vector_fprint = igraph_vector_fprint(v : VectorT*, file : File*) : LibC::Int
  fun vector_init_real = igraph_vector_init_real(v : VectorT*, no : LibC::Int, ...) : LibC::Int
  fun vector_init_int = igraph_vector_init_int(v : VectorT*, no : LibC::Int, ...) : LibC::Int
  fun vector_init_real_end = igraph_vector_init_real_end(v : VectorT*, endmark : RealT, ...) : LibC::Int
  fun vector_init_int_end = igraph_vector_init_int_end(v : VectorT*, endmark : LibC::Int, ...) : LibC::Int
  fun vector_move_interval = igraph_vector_move_interval(v : VectorT*, begin : LibC::Long, _end : LibC::Long, to : LibC::Long) : LibC::Int
  fun vector_move_interval2 = igraph_vector_move_interval2(v : VectorT*, begin : LibC::Long, _end : LibC::Long, to : LibC::Long) : LibC::Int
  fun vector_permdelete = igraph_vector_permdelete(v : VectorT*, index : VectorT*, nremove : LibC::Long)
  fun vector_filter_smaller = igraph_vector_filter_smaller(v : VectorT*, elem : RealT) : LibC::Int
  fun vector_get_interval = igraph_vector_get_interval(v : VectorT*, res : VectorT*, from : LibC::Long, to : LibC::Long) : LibC::Int
  fun vector_difference_sorted = igraph_vector_difference_sorted(v1 : VectorT*, v2 : VectorT*, result : VectorT*) : LibC::Int
  fun vector_intersect_sorted = igraph_vector_intersect_sorted(v1 : VectorT*, v2 : VectorT*, result : VectorT*) : LibC::Int
  fun vector_index = igraph_vector_index(v : VectorT*, newv : VectorT*, idx : VectorT*) : LibC::Int
  fun vector_index_int = igraph_vector_index_int(v : VectorT*, idx : VectorIntT*) : LibC::Int
  fun vector_long_init = igraph_vector_long_init(v : VectorLongT*, size : LibC::Long) : LibC::Int
  fun vector_long_init_copy = igraph_vector_long_init_copy(v : VectorLongT*, data : LibC::Long*, length : LibC::Long) : LibC::Int
  fun vector_long_init_seq = igraph_vector_long_init_seq(v : VectorLongT*, from : LibC::Long, to : LibC::Long) : LibC::Int
  fun vector_long_copy = igraph_vector_long_copy(to : VectorLongT*, from : VectorLongT*) : LibC::Int
  fun vector_long_destroy = igraph_vector_long_destroy(v : VectorLongT*)
  fun vector_long_capacity = igraph_vector_long_capacity(v : VectorLongT*) : LibC::Long
  fun vector_long_e = igraph_vector_long_e(v : VectorLongT*, pos : LibC::Long) : LibC::Long
  fun vector_long_e_ptr = igraph_vector_long_e_ptr(v : VectorLongT*, pos : LibC::Long) : LibC::Long*
  fun vector_long_set = igraph_vector_long_set(v : VectorLongT*, pos : LibC::Long, value : LibC::Long)
  fun vector_long_tail = igraph_vector_long_tail(v : VectorLongT*) : LibC::Long
  fun vector_long_null = igraph_vector_long_null(v : VectorLongT*)
  fun vector_long_fill = igraph_vector_long_fill(v : VectorLongT*, e : LibC::Long)
  fun vector_long_view = igraph_vector_long_view(v : VectorLongT*, data : LibC::Long*, length : LibC::Long) : VectorLongT*
  fun vector_long_copy_to = igraph_vector_long_copy_to(v : VectorLongT*, to : LibC::Long*)
  fun vector_long_update = igraph_vector_long_update(to : VectorLongT*, from : VectorLongT*) : LibC::Int
  fun vector_long_append = igraph_vector_long_append(to : VectorLongT*, from : VectorLongT*) : LibC::Int
  fun vector_long_swap = igraph_vector_long_swap(v1 : VectorLongT*, v2 : VectorLongT*) : LibC::Int
  fun vector_long_swap_elements = igraph_vector_long_swap_elements(v : VectorLongT*, i : LibC::Long, j : LibC::Long) : LibC::Int
  fun vector_long_reverse = igraph_vector_long_reverse(v : VectorLongT*) : LibC::Int
  fun vector_long_shuffle = igraph_vector_long_shuffle(v : VectorLongT*) : LibC::Int
  fun vector_long_add_constant = igraph_vector_long_add_constant(v : VectorLongT*, plus : LibC::Long)
  fun vector_long_scale = igraph_vector_long_scale(v : VectorLongT*, by : LibC::Long)
  fun vector_long_add = igraph_vector_long_add(v1 : VectorLongT*, v2 : VectorLongT*) : LibC::Int
  fun vector_long_sub = igraph_vector_long_sub(v1 : VectorLongT*, v2 : VectorLongT*) : LibC::Int
  fun vector_long_mul = igraph_vector_long_mul(v1 : VectorLongT*, v2 : VectorLongT*) : LibC::Int
  fun vector_long_div = igraph_vector_long_div(v1 : VectorLongT*, v2 : VectorLongT*) : LibC::Int
  fun vector_long_cumsum = igraph_vector_long_cumsum(to : VectorLongT*, from : VectorLongT*) : LibC::Int
  fun vector_long_abs = igraph_vector_long_abs(v : VectorLongT*) : LibC::Int
  fun vector_long_all_e = igraph_vector_long_all_e(lhs : VectorLongT*, rhs : VectorLongT*) : BoolT
  fun vector_long_all_l = igraph_vector_long_all_l(lhs : VectorLongT*, rhs : VectorLongT*) : BoolT
  fun vector_long_all_g = igraph_vector_long_all_g(lhs : VectorLongT*, rhs : VectorLongT*) : BoolT
  fun vector_long_all_le = igraph_vector_long_all_le(lhs : VectorLongT*, rhs : VectorLongT*) : BoolT
  fun vector_long_all_ge = igraph_vector_long_all_ge(lhs : VectorLongT*, rhs : VectorLongT*) : BoolT
  fun vector_long_min = igraph_vector_long_min(v : VectorLongT*) : LibC::Long
  fun vector_long_max = igraph_vector_long_max(v : VectorLongT*) : LibC::Long
  fun vector_long_which_min = igraph_vector_long_which_min(v : VectorLongT*) : LibC::Long
  fun vector_long_which_max = igraph_vector_long_which_max(v : VectorLongT*) : LibC::Long
  fun vector_long_minmax = igraph_vector_long_minmax(v : VectorLongT*, min : LibC::Long*, max : LibC::Long*) : LibC::Int
  fun vector_long_which_minmax = igraph_vector_long_which_minmax(v : VectorLongT*, which_min : LibC::Long*, which_max : LibC::Long*) : LibC::Int
  fun vector_long_empty = igraph_vector_long_empty(v : VectorLongT*) : BoolT
  fun vector_long_size = igraph_vector_long_size(v : VectorLongT*) : LibC::Long
  fun vector_long_isnull = igraph_vector_long_isnull(v : VectorLongT*) : BoolT
  fun vector_long_sum = igraph_vector_long_sum(v : VectorLongT*) : LibC::Long
  fun vector_long_sumsq = igraph_vector_long_sumsq(v : VectorLongT*) : RealT
  fun vector_long_prod = igraph_vector_long_prod(v : VectorLongT*) : LibC::Long
  fun vector_long_isininterval = igraph_vector_long_isininterval(v : VectorLongT*, low : LibC::Long, high : LibC::Long) : BoolT
  fun vector_long_any_smaller = igraph_vector_long_any_smaller(v : VectorLongT*, limit : LibC::Long) : BoolT
  fun vector_long_is_equal = igraph_vector_long_is_equal(lhs : VectorLongT*, rhs : VectorLongT*) : BoolT
  fun vector_long_maxdifference = igraph_vector_long_maxdifference(m1 : VectorLongT*, m2 : VectorLongT*) : LibC::Long
  fun vector_long_contains = igraph_vector_long_contains(v : VectorLongT*, e : LibC::Long) : BoolT
  fun vector_long_search = igraph_vector_long_search(v : VectorLongT*, from : LibC::Long, what : LibC::Long, pos : LibC::Long*) : BoolT
  fun vector_long_binsearch = igraph_vector_long_binsearch(v : VectorLongT*, what : LibC::Long, pos : LibC::Long*) : BoolT
  fun vector_long_binsearch2 = igraph_vector_long_binsearch2(v : VectorLongT*, what : LibC::Long) : BoolT
  fun vector_long_clear = igraph_vector_long_clear(v : VectorLongT*)
  fun vector_long_resize = igraph_vector_long_resize(v : VectorLongT*, newsize : LibC::Long) : LibC::Int
  fun vector_long_resize_min = igraph_vector_long_resize_min(v : VectorLongT*) : LibC::Int
  fun vector_long_reserve = igraph_vector_long_reserve(v : VectorLongT*, size : LibC::Long) : LibC::Int
  fun vector_long_push_back = igraph_vector_long_push_back(v : VectorLongT*, e : LibC::Long) : LibC::Int
  fun vector_long_pop_back = igraph_vector_long_pop_back(v : VectorLongT*) : LibC::Long
  fun vector_long_insert = igraph_vector_long_insert(v : VectorLongT*, pos : LibC::Long, value : LibC::Long) : LibC::Int
  fun vector_long_remove = igraph_vector_long_remove(v : VectorLongT*, elem : LibC::Long)
  fun vector_long_remove_section = igraph_vector_long_remove_section(v : VectorLongT*, from : LibC::Long, to : LibC::Long)
  fun vector_long_sort = igraph_vector_long_sort(v : VectorLongT*)
  fun vector_long_qsort_ind = igraph_vector_long_qsort_ind(v : VectorLongT*, inds : VectorT*, descending : BoolT) : LibC::Long
  fun vector_long_print = igraph_vector_long_print(v : VectorLongT*) : LibC::Int
  fun vector_long_printf = igraph_vector_long_printf(v : VectorLongT*, format : LibC::Char*) : LibC::Int
  fun vector_long_fprint = igraph_vector_long_fprint(v : VectorLongT*, file : File*) : LibC::Int
  fun vector_long_init_real = igraph_vector_long_init_real(v : VectorLongT*, no : LibC::Int, ...) : LibC::Int
  fun vector_long_init_int = igraph_vector_long_init_int(v : VectorLongT*, no : LibC::Int, ...) : LibC::Int
  fun vector_long_init_real_end = igraph_vector_long_init_real_end(v : VectorLongT*, endmark : LibC::Long, ...) : LibC::Int
  fun vector_long_init_int_end = igraph_vector_long_init_int_end(v : VectorLongT*, endmark : LibC::Int, ...) : LibC::Int
  fun vector_long_move_interval = igraph_vector_long_move_interval(v : VectorLongT*, begin : LibC::Long, _end : LibC::Long, to : LibC::Long) : LibC::Int
  fun vector_long_move_interval2 = igraph_vector_long_move_interval2(v : VectorLongT*, begin : LibC::Long, _end : LibC::Long, to : LibC::Long) : LibC::Int
  fun vector_long_permdelete = igraph_vector_long_permdelete(v : VectorLongT*, index : VectorT*, nremove : LibC::Long)
  fun vector_long_filter_smaller = igraph_vector_long_filter_smaller(v : VectorLongT*, elem : LibC::Long) : LibC::Int
  fun vector_long_get_interval = igraph_vector_long_get_interval(v : VectorLongT*, res : VectorLongT*, from : LibC::Long, to : LibC::Long) : LibC::Int
  fun vector_long_difference_sorted = igraph_vector_long_difference_sorted(v1 : VectorLongT*, v2 : VectorLongT*, result : VectorLongT*) : LibC::Int
  fun vector_long_intersect_sorted = igraph_vector_long_intersect_sorted(v1 : VectorLongT*, v2 : VectorLongT*, result : VectorLongT*) : LibC::Int
  fun vector_long_index = igraph_vector_long_index(v : VectorLongT*, newv : VectorLongT*, idx : VectorT*) : LibC::Int
  fun vector_long_index_int = igraph_vector_long_index_int(v : VectorLongT*, idx : VectorIntT*) : LibC::Int
  fun vector_char_init = igraph_vector_char_init(v : VectorCharT*, size : LibC::Long) : LibC::Int
  fun vector_char_init_copy = igraph_vector_char_init_copy(v : VectorCharT*, data : LibC::Char*, length : LibC::Long) : LibC::Int
  fun vector_char_init_seq = igraph_vector_char_init_seq(v : VectorCharT*, from : LibC::Char, to : LibC::Char) : LibC::Int
  fun vector_char_copy = igraph_vector_char_copy(to : VectorCharT*, from : VectorCharT*) : LibC::Int
  fun vector_char_destroy = igraph_vector_char_destroy(v : VectorCharT*)
  fun vector_char_capacity = igraph_vector_char_capacity(v : VectorCharT*) : LibC::Long
  fun vector_char_e = igraph_vector_char_e(v : VectorCharT*, pos : LibC::Long) : LibC::Char
  fun vector_char_e_ptr = igraph_vector_char_e_ptr(v : VectorCharT*, pos : LibC::Long) : LibC::Char*
  fun vector_char_set = igraph_vector_char_set(v : VectorCharT*, pos : LibC::Long, value : LibC::Char)
  fun vector_char_tail = igraph_vector_char_tail(v : VectorCharT*) : LibC::Char
  fun vector_char_null = igraph_vector_char_null(v : VectorCharT*)
  fun vector_char_fill = igraph_vector_char_fill(v : VectorCharT*, e : LibC::Char)
  fun vector_char_view = igraph_vector_char_view(v : VectorCharT*, data : LibC::Char*, length : LibC::Long) : VectorCharT*
  fun vector_char_copy_to = igraph_vector_char_copy_to(v : VectorCharT*, to : LibC::Char*)
  fun vector_char_update = igraph_vector_char_update(to : VectorCharT*, from : VectorCharT*) : LibC::Int
  fun vector_char_append = igraph_vector_char_append(to : VectorCharT*, from : VectorCharT*) : LibC::Int
  fun vector_char_swap = igraph_vector_char_swap(v1 : VectorCharT*, v2 : VectorCharT*) : LibC::Int
  fun vector_char_swap_elements = igraph_vector_char_swap_elements(v : VectorCharT*, i : LibC::Long, j : LibC::Long) : LibC::Int
  fun vector_char_reverse = igraph_vector_char_reverse(v : VectorCharT*) : LibC::Int
  fun vector_char_shuffle = igraph_vector_char_shuffle(v : VectorCharT*) : LibC::Int
  fun vector_char_add_constant = igraph_vector_char_add_constant(v : VectorCharT*, plus : LibC::Char)
  fun vector_char_scale = igraph_vector_char_scale(v : VectorCharT*, by : LibC::Char)
  fun vector_char_add = igraph_vector_char_add(v1 : VectorCharT*, v2 : VectorCharT*) : LibC::Int
  fun vector_char_sub = igraph_vector_char_sub(v1 : VectorCharT*, v2 : VectorCharT*) : LibC::Int
  fun vector_char_mul = igraph_vector_char_mul(v1 : VectorCharT*, v2 : VectorCharT*) : LibC::Int
  fun vector_char_div = igraph_vector_char_div(v1 : VectorCharT*, v2 : VectorCharT*) : LibC::Int
  fun vector_char_cumsum = igraph_vector_char_cumsum(to : VectorCharT*, from : VectorCharT*) : LibC::Int
  fun vector_char_abs = igraph_vector_char_abs(v : VectorCharT*) : LibC::Int
  fun vector_char_all_e = igraph_vector_char_all_e(lhs : VectorCharT*, rhs : VectorCharT*) : BoolT
  fun vector_char_all_l = igraph_vector_char_all_l(lhs : VectorCharT*, rhs : VectorCharT*) : BoolT
  fun vector_char_all_g = igraph_vector_char_all_g(lhs : VectorCharT*, rhs : VectorCharT*) : BoolT
  fun vector_char_all_le = igraph_vector_char_all_le(lhs : VectorCharT*, rhs : VectorCharT*) : BoolT
  fun vector_char_all_ge = igraph_vector_char_all_ge(lhs : VectorCharT*, rhs : VectorCharT*) : BoolT
  fun vector_char_min = igraph_vector_char_min(v : VectorCharT*) : LibC::Char
  fun vector_char_max = igraph_vector_char_max(v : VectorCharT*) : LibC::Char
  fun vector_char_which_min = igraph_vector_char_which_min(v : VectorCharT*) : LibC::Long
  fun vector_char_which_max = igraph_vector_char_which_max(v : VectorCharT*) : LibC::Long
  fun vector_char_minmax = igraph_vector_char_minmax(v : VectorCharT*, min : LibC::Char*, max : LibC::Char*) : LibC::Int
  fun vector_char_which_minmax = igraph_vector_char_which_minmax(v : VectorCharT*, which_min : LibC::Long*, which_max : LibC::Long*) : LibC::Int
  fun vector_char_empty = igraph_vector_char_empty(v : VectorCharT*) : BoolT
  fun vector_char_size = igraph_vector_char_size(v : VectorCharT*) : LibC::Long
  fun vector_char_isnull = igraph_vector_char_isnull(v : VectorCharT*) : BoolT
  fun vector_char_sum = igraph_vector_char_sum(v : VectorCharT*) : LibC::Char
  fun vector_char_sumsq = igraph_vector_char_sumsq(v : VectorCharT*) : RealT
  fun vector_char_prod = igraph_vector_char_prod(v : VectorCharT*) : LibC::Char
  fun vector_char_isininterval = igraph_vector_char_isininterval(v : VectorCharT*, low : LibC::Char, high : LibC::Char) : BoolT
  fun vector_char_any_smaller = igraph_vector_char_any_smaller(v : VectorCharT*, limit : LibC::Char) : BoolT
  fun vector_char_is_equal = igraph_vector_char_is_equal(lhs : VectorCharT*, rhs : VectorCharT*) : BoolT
  fun vector_char_maxdifference = igraph_vector_char_maxdifference(m1 : VectorCharT*, m2 : VectorCharT*) : LibC::Char
  fun vector_char_contains = igraph_vector_char_contains(v : VectorCharT*, e : LibC::Char) : BoolT
  fun vector_char_search = igraph_vector_char_search(v : VectorCharT*, from : LibC::Long, what : LibC::Char, pos : LibC::Long*) : BoolT
  fun vector_char_binsearch = igraph_vector_char_binsearch(v : VectorCharT*, what : LibC::Char, pos : LibC::Long*) : BoolT
  fun vector_char_binsearch2 = igraph_vector_char_binsearch2(v : VectorCharT*, what : LibC::Char) : BoolT
  fun vector_char_clear = igraph_vector_char_clear(v : VectorCharT*)
  fun vector_char_resize = igraph_vector_char_resize(v : VectorCharT*, newsize : LibC::Long) : LibC::Int
  fun vector_char_resize_min = igraph_vector_char_resize_min(v : VectorCharT*) : LibC::Int
  fun vector_char_reserve = igraph_vector_char_reserve(v : VectorCharT*, size : LibC::Long) : LibC::Int
  fun vector_char_push_back = igraph_vector_char_push_back(v : VectorCharT*, e : LibC::Char) : LibC::Int
  fun vector_char_pop_back = igraph_vector_char_pop_back(v : VectorCharT*) : LibC::Char
  fun vector_char_insert = igraph_vector_char_insert(v : VectorCharT*, pos : LibC::Long, value : LibC::Char) : LibC::Int
  fun vector_char_remove = igraph_vector_char_remove(v : VectorCharT*, elem : LibC::Long)
  fun vector_char_remove_section = igraph_vector_char_remove_section(v : VectorCharT*, from : LibC::Long, to : LibC::Long)
  fun vector_char_sort = igraph_vector_char_sort(v : VectorCharT*)
  fun vector_char_qsort_ind = igraph_vector_char_qsort_ind(v : VectorCharT*, inds : VectorT*, descending : BoolT) : LibC::Long
  fun vector_char_print = igraph_vector_char_print(v : VectorCharT*) : LibC::Int
  fun vector_char_printf = igraph_vector_char_printf(v : VectorCharT*, format : LibC::Char*) : LibC::Int
  fun vector_char_fprint = igraph_vector_char_fprint(v : VectorCharT*, file : File*) : LibC::Int
  fun vector_char_init_real = igraph_vector_char_init_real(v : VectorCharT*, no : LibC::Int, ...) : LibC::Int
  fun vector_char_init_int = igraph_vector_char_init_int(v : VectorCharT*, no : LibC::Int, ...) : LibC::Int
  fun vector_char_init_real_end = igraph_vector_char_init_real_end(v : VectorCharT*, endmark : LibC::Char, ...) : LibC::Int
  fun vector_char_init_int_end = igraph_vector_char_init_int_end(v : VectorCharT*, endmark : LibC::Int, ...) : LibC::Int
  fun vector_char_move_interval = igraph_vector_char_move_interval(v : VectorCharT*, begin : LibC::Long, _end : LibC::Long, to : LibC::Long) : LibC::Int
  fun vector_char_move_interval2 = igraph_vector_char_move_interval2(v : VectorCharT*, begin : LibC::Long, _end : LibC::Long, to : LibC::Long) : LibC::Int
  fun vector_char_permdelete = igraph_vector_char_permdelete(v : VectorCharT*, index : VectorT*, nremove : LibC::Long)
  fun vector_char_filter_smaller = igraph_vector_char_filter_smaller(v : VectorCharT*, elem : LibC::Char) : LibC::Int
  fun vector_char_get_interval = igraph_vector_char_get_interval(v : VectorCharT*, res : VectorCharT*, from : LibC::Long, to : LibC::Long) : LibC::Int
  fun vector_char_difference_sorted = igraph_vector_char_difference_sorted(v1 : VectorCharT*, v2 : VectorCharT*, result : VectorCharT*) : LibC::Int
  fun vector_char_intersect_sorted = igraph_vector_char_intersect_sorted(v1 : VectorCharT*, v2 : VectorCharT*, result : VectorCharT*) : LibC::Int
  fun vector_char_index = igraph_vector_char_index(v : VectorCharT*, newv : VectorCharT*, idx : VectorT*) : LibC::Int
  fun vector_char_index_int = igraph_vector_char_index_int(v : VectorCharT*, idx : VectorIntT*) : LibC::Int
  fun vector_bool_init = igraph_vector_bool_init(v : VectorBoolT*, size : LibC::Long) : LibC::Int
  fun vector_bool_init_copy = igraph_vector_bool_init_copy(v : VectorBoolT*, data : BoolT*, length : LibC::Long) : LibC::Int
  fun vector_bool_init_seq = igraph_vector_bool_init_seq(v : VectorBoolT*, from : BoolT, to : BoolT) : LibC::Int
  fun vector_bool_copy = igraph_vector_bool_copy(to : VectorBoolT*, from : VectorBoolT*) : LibC::Int
  fun vector_bool_destroy = igraph_vector_bool_destroy(v : VectorBoolT*)
  fun vector_bool_capacity = igraph_vector_bool_capacity(v : VectorBoolT*) : LibC::Long
  fun vector_bool_e = igraph_vector_bool_e(v : VectorBoolT*, pos : LibC::Long) : BoolT
  fun vector_bool_e_ptr = igraph_vector_bool_e_ptr(v : VectorBoolT*, pos : LibC::Long) : BoolT*
  fun vector_bool_set = igraph_vector_bool_set(v : VectorBoolT*, pos : LibC::Long, value : BoolT)
  fun vector_bool_tail = igraph_vector_bool_tail(v : VectorBoolT*) : BoolT
  fun vector_bool_null = igraph_vector_bool_null(v : VectorBoolT*)
  fun vector_bool_fill = igraph_vector_bool_fill(v : VectorBoolT*, e : BoolT)
  fun vector_bool_view = igraph_vector_bool_view(v : VectorBoolT*, data : BoolT*, length : LibC::Long) : VectorBoolT*
  fun vector_bool_copy_to = igraph_vector_bool_copy_to(v : VectorBoolT*, to : BoolT*)
  fun vector_bool_update = igraph_vector_bool_update(to : VectorBoolT*, from : VectorBoolT*) : LibC::Int
  fun vector_bool_append = igraph_vector_bool_append(to : VectorBoolT*, from : VectorBoolT*) : LibC::Int
  fun vector_bool_swap = igraph_vector_bool_swap(v1 : VectorBoolT*, v2 : VectorBoolT*) : LibC::Int
  fun vector_bool_swap_elements = igraph_vector_bool_swap_elements(v : VectorBoolT*, i : LibC::Long, j : LibC::Long) : LibC::Int
  fun vector_bool_reverse = igraph_vector_bool_reverse(v : VectorBoolT*) : LibC::Int
  fun vector_bool_shuffle = igraph_vector_bool_shuffle(v : VectorBoolT*) : LibC::Int
  fun vector_bool_add_constant = igraph_vector_bool_add_constant(v : VectorBoolT*, plus : BoolT)
  fun vector_bool_scale = igraph_vector_bool_scale(v : VectorBoolT*, by : BoolT)
  fun vector_bool_add = igraph_vector_bool_add(v1 : VectorBoolT*, v2 : VectorBoolT*) : LibC::Int
  fun vector_bool_sub = igraph_vector_bool_sub(v1 : VectorBoolT*, v2 : VectorBoolT*) : LibC::Int
  fun vector_bool_mul = igraph_vector_bool_mul(v1 : VectorBoolT*, v2 : VectorBoolT*) : LibC::Int
  fun vector_bool_div = igraph_vector_bool_div(v1 : VectorBoolT*, v2 : VectorBoolT*) : LibC::Int
  fun vector_bool_cumsum = igraph_vector_bool_cumsum(to : VectorBoolT*, from : VectorBoolT*) : LibC::Int
  fun vector_bool_abs = igraph_vector_bool_abs(v : VectorBoolT*) : LibC::Int
  fun vector_bool_all_e = igraph_vector_bool_all_e(lhs : VectorBoolT*, rhs : VectorBoolT*) : BoolT
  fun vector_bool_all_l = igraph_vector_bool_all_l(lhs : VectorBoolT*, rhs : VectorBoolT*) : BoolT
  fun vector_bool_all_g = igraph_vector_bool_all_g(lhs : VectorBoolT*, rhs : VectorBoolT*) : BoolT
  fun vector_bool_all_le = igraph_vector_bool_all_le(lhs : VectorBoolT*, rhs : VectorBoolT*) : BoolT
  fun vector_bool_all_ge = igraph_vector_bool_all_ge(lhs : VectorBoolT*, rhs : VectorBoolT*) : BoolT
  fun vector_bool_min = igraph_vector_bool_min(v : VectorBoolT*) : BoolT
  fun vector_bool_max = igraph_vector_bool_max(v : VectorBoolT*) : BoolT
  fun vector_bool_which_min = igraph_vector_bool_which_min(v : VectorBoolT*) : LibC::Long
  fun vector_bool_which_max = igraph_vector_bool_which_max(v : VectorBoolT*) : LibC::Long
  fun vector_bool_minmax = igraph_vector_bool_minmax(v : VectorBoolT*, min : BoolT*, max : BoolT*) : LibC::Int
  fun vector_bool_which_minmax = igraph_vector_bool_which_minmax(v : VectorBoolT*, which_min : LibC::Long*, which_max : LibC::Long*) : LibC::Int
  fun vector_bool_empty = igraph_vector_bool_empty(v : VectorBoolT*) : BoolT
  fun vector_bool_size = igraph_vector_bool_size(v : VectorBoolT*) : LibC::Long
  fun vector_bool_isnull = igraph_vector_bool_isnull(v : VectorBoolT*) : BoolT
  fun vector_bool_sum = igraph_vector_bool_sum(v : VectorBoolT*) : BoolT
  fun vector_bool_sumsq = igraph_vector_bool_sumsq(v : VectorBoolT*) : RealT
  fun vector_bool_prod = igraph_vector_bool_prod(v : VectorBoolT*) : BoolT
  fun vector_bool_isininterval = igraph_vector_bool_isininterval(v : VectorBoolT*, low : BoolT, high : BoolT) : BoolT
  fun vector_bool_any_smaller = igraph_vector_bool_any_smaller(v : VectorBoolT*, limit : BoolT) : BoolT
  fun vector_bool_is_equal = igraph_vector_bool_is_equal(lhs : VectorBoolT*, rhs : VectorBoolT*) : BoolT
  fun vector_bool_maxdifference = igraph_vector_bool_maxdifference(m1 : VectorBoolT*, m2 : VectorBoolT*) : BoolT
  fun vector_bool_contains = igraph_vector_bool_contains(v : VectorBoolT*, e : BoolT) : BoolT
  fun vector_bool_search = igraph_vector_bool_search(v : VectorBoolT*, from : LibC::Long, what : BoolT, pos : LibC::Long*) : BoolT
  fun vector_bool_binsearch = igraph_vector_bool_binsearch(v : VectorBoolT*, what : BoolT, pos : LibC::Long*) : BoolT
  fun vector_bool_binsearch2 = igraph_vector_bool_binsearch2(v : VectorBoolT*, what : BoolT) : BoolT
  fun vector_bool_clear = igraph_vector_bool_clear(v : VectorBoolT*)
  fun vector_bool_resize = igraph_vector_bool_resize(v : VectorBoolT*, newsize : LibC::Long) : LibC::Int
  fun vector_bool_resize_min = igraph_vector_bool_resize_min(v : VectorBoolT*) : LibC::Int
  fun vector_bool_reserve = igraph_vector_bool_reserve(v : VectorBoolT*, size : LibC::Long) : LibC::Int
  fun vector_bool_push_back = igraph_vector_bool_push_back(v : VectorBoolT*, e : BoolT) : LibC::Int
  fun vector_bool_pop_back = igraph_vector_bool_pop_back(v : VectorBoolT*) : BoolT
  fun vector_bool_insert = igraph_vector_bool_insert(v : VectorBoolT*, pos : LibC::Long, value : BoolT) : LibC::Int
  fun vector_bool_remove = igraph_vector_bool_remove(v : VectorBoolT*, elem : LibC::Long)
  fun vector_bool_remove_section = igraph_vector_bool_remove_section(v : VectorBoolT*, from : LibC::Long, to : LibC::Long)
  fun vector_bool_sort = igraph_vector_bool_sort(v : VectorBoolT*)
  fun vector_bool_qsort_ind = igraph_vector_bool_qsort_ind(v : VectorBoolT*, inds : VectorT*, descending : BoolT) : LibC::Long
  fun vector_bool_print = igraph_vector_bool_print(v : VectorBoolT*) : LibC::Int
  fun vector_bool_printf = igraph_vector_bool_printf(v : VectorBoolT*, format : LibC::Char*) : LibC::Int
  fun vector_bool_fprint = igraph_vector_bool_fprint(v : VectorBoolT*, file : File*) : LibC::Int
  fun vector_bool_init_real = igraph_vector_bool_init_real(v : VectorBoolT*, no : LibC::Int, ...) : LibC::Int
  fun vector_bool_init_int = igraph_vector_bool_init_int(v : VectorBoolT*, no : LibC::Int, ...) : LibC::Int
  fun vector_bool_init_real_end = igraph_vector_bool_init_real_end(v : VectorBoolT*, endmark : BoolT, ...) : LibC::Int
  fun vector_bool_init_int_end = igraph_vector_bool_init_int_end(v : VectorBoolT*, endmark : LibC::Int, ...) : LibC::Int
  fun vector_bool_move_interval = igraph_vector_bool_move_interval(v : VectorBoolT*, begin : LibC::Long, _end : LibC::Long, to : LibC::Long) : LibC::Int
  fun vector_bool_move_interval2 = igraph_vector_bool_move_interval2(v : VectorBoolT*, begin : LibC::Long, _end : LibC::Long, to : LibC::Long) : LibC::Int
  fun vector_bool_permdelete = igraph_vector_bool_permdelete(v : VectorBoolT*, index : VectorT*, nremove : LibC::Long)
  fun vector_bool_filter_smaller = igraph_vector_bool_filter_smaller(v : VectorBoolT*, elem : BoolT) : LibC::Int
  fun vector_bool_get_interval = igraph_vector_bool_get_interval(v : VectorBoolT*, res : VectorBoolT*, from : LibC::Long, to : LibC::Long) : LibC::Int
  fun vector_bool_difference_sorted = igraph_vector_bool_difference_sorted(v1 : VectorBoolT*, v2 : VectorBoolT*, result : VectorBoolT*) : LibC::Int
  fun vector_bool_intersect_sorted = igraph_vector_bool_intersect_sorted(v1 : VectorBoolT*, v2 : VectorBoolT*, result : VectorBoolT*) : LibC::Int
  fun vector_bool_index = igraph_vector_bool_index(v : VectorBoolT*, newv : VectorBoolT*, idx : VectorT*) : LibC::Int
  fun vector_bool_index_int = igraph_vector_bool_index_int(v : VectorBoolT*, idx : VectorIntT*) : LibC::Int
  fun vector_int_init = igraph_vector_int_init(v : VectorIntT*, size : LibC::Long) : LibC::Int
  fun vector_int_init_copy = igraph_vector_int_init_copy(v : VectorIntT*, data : LibC::Int*, length : LibC::Long) : LibC::Int
  fun vector_int_init_seq = igraph_vector_int_init_seq(v : VectorIntT*, from : LibC::Int, to : LibC::Int) : LibC::Int
  fun vector_int_copy = igraph_vector_int_copy(to : VectorIntT*, from : VectorIntT*) : LibC::Int
  fun vector_int_destroy = igraph_vector_int_destroy(v : VectorIntT*)
  fun vector_int_capacity = igraph_vector_int_capacity(v : VectorIntT*) : LibC::Long
  fun vector_int_e = igraph_vector_int_e(v : VectorIntT*, pos : LibC::Long) : LibC::Int
  fun vector_int_e_ptr = igraph_vector_int_e_ptr(v : VectorIntT*, pos : LibC::Long) : LibC::Int*
  fun vector_int_set = igraph_vector_int_set(v : VectorIntT*, pos : LibC::Long, value : LibC::Int)
  fun vector_int_tail = igraph_vector_int_tail(v : VectorIntT*) : LibC::Int
  fun vector_int_null = igraph_vector_int_null(v : VectorIntT*)
  fun vector_int_fill = igraph_vector_int_fill(v : VectorIntT*, e : LibC::Int)
  fun vector_int_view = igraph_vector_int_view(v : VectorIntT*, data : LibC::Int*, length : LibC::Long) : VectorIntT*
  fun vector_int_copy_to = igraph_vector_int_copy_to(v : VectorIntT*, to : LibC::Int*)
  fun vector_int_update = igraph_vector_int_update(to : VectorIntT*, from : VectorIntT*) : LibC::Int
  fun vector_int_append = igraph_vector_int_append(to : VectorIntT*, from : VectorIntT*) : LibC::Int
  fun vector_int_swap = igraph_vector_int_swap(v1 : VectorIntT*, v2 : VectorIntT*) : LibC::Int
  fun vector_int_swap_elements = igraph_vector_int_swap_elements(v : VectorIntT*, i : LibC::Long, j : LibC::Long) : LibC::Int
  fun vector_int_reverse = igraph_vector_int_reverse(v : VectorIntT*) : LibC::Int
  fun vector_int_shuffle = igraph_vector_int_shuffle(v : VectorIntT*) : LibC::Int
  fun vector_int_add_constant = igraph_vector_int_add_constant(v : VectorIntT*, plus : LibC::Int)
  fun vector_int_scale = igraph_vector_int_scale(v : VectorIntT*, by : LibC::Int)
  fun vector_int_add = igraph_vector_int_add(v1 : VectorIntT*, v2 : VectorIntT*) : LibC::Int
  fun vector_int_sub = igraph_vector_int_sub(v1 : VectorIntT*, v2 : VectorIntT*) : LibC::Int
  fun vector_int_mul = igraph_vector_int_mul(v1 : VectorIntT*, v2 : VectorIntT*) : LibC::Int
  fun vector_int_div = igraph_vector_int_div(v1 : VectorIntT*, v2 : VectorIntT*) : LibC::Int
  fun vector_int_cumsum = igraph_vector_int_cumsum(to : VectorIntT*, from : VectorIntT*) : LibC::Int
  fun vector_int_abs = igraph_vector_int_abs(v : VectorIntT*) : LibC::Int
  fun vector_int_all_e = igraph_vector_int_all_e(lhs : VectorIntT*, rhs : VectorIntT*) : BoolT
  fun vector_int_all_l = igraph_vector_int_all_l(lhs : VectorIntT*, rhs : VectorIntT*) : BoolT
  fun vector_int_all_g = igraph_vector_int_all_g(lhs : VectorIntT*, rhs : VectorIntT*) : BoolT
  fun vector_int_all_le = igraph_vector_int_all_le(lhs : VectorIntT*, rhs : VectorIntT*) : BoolT
  fun vector_int_all_ge = igraph_vector_int_all_ge(lhs : VectorIntT*, rhs : VectorIntT*) : BoolT
  fun vector_int_min = igraph_vector_int_min(v : VectorIntT*) : LibC::Int
  fun vector_int_max = igraph_vector_int_max(v : VectorIntT*) : LibC::Int
  fun vector_int_which_min = igraph_vector_int_which_min(v : VectorIntT*) : LibC::Long
  fun vector_int_which_max = igraph_vector_int_which_max(v : VectorIntT*) : LibC::Long
  fun vector_int_minmax = igraph_vector_int_minmax(v : VectorIntT*, min : LibC::Int*, max : LibC::Int*) : LibC::Int
  fun vector_int_which_minmax = igraph_vector_int_which_minmax(v : VectorIntT*, which_min : LibC::Long*, which_max : LibC::Long*) : LibC::Int
  fun vector_int_empty = igraph_vector_int_empty(v : VectorIntT*) : BoolT
  fun vector_int_size = igraph_vector_int_size(v : VectorIntT*) : LibC::Long
  fun vector_int_isnull = igraph_vector_int_isnull(v : VectorIntT*) : BoolT
  fun vector_int_sum = igraph_vector_int_sum(v : VectorIntT*) : LibC::Int
  fun vector_int_sumsq = igraph_vector_int_sumsq(v : VectorIntT*) : RealT
  fun vector_int_prod = igraph_vector_int_prod(v : VectorIntT*) : LibC::Int
  fun vector_int_isininterval = igraph_vector_int_isininterval(v : VectorIntT*, low : LibC::Int, high : LibC::Int) : BoolT
  fun vector_int_any_smaller = igraph_vector_int_any_smaller(v : VectorIntT*, limit : LibC::Int) : BoolT
  fun vector_int_is_equal = igraph_vector_int_is_equal(lhs : VectorIntT*, rhs : VectorIntT*) : BoolT
  fun vector_int_maxdifference = igraph_vector_int_maxdifference(m1 : VectorIntT*, m2 : VectorIntT*) : LibC::Int
  fun vector_int_contains = igraph_vector_int_contains(v : VectorIntT*, e : LibC::Int) : BoolT
  fun vector_int_search = igraph_vector_int_search(v : VectorIntT*, from : LibC::Long, what : LibC::Int, pos : LibC::Long*) : BoolT
  fun vector_int_binsearch = igraph_vector_int_binsearch(v : VectorIntT*, what : LibC::Int, pos : LibC::Long*) : BoolT
  fun vector_int_binsearch2 = igraph_vector_int_binsearch2(v : VectorIntT*, what : LibC::Int) : BoolT
  fun vector_int_clear = igraph_vector_int_clear(v : VectorIntT*)
  fun vector_int_resize = igraph_vector_int_resize(v : VectorIntT*, newsize : LibC::Long) : LibC::Int
  fun vector_int_resize_min = igraph_vector_int_resize_min(v : VectorIntT*) : LibC::Int
  fun vector_int_reserve = igraph_vector_int_reserve(v : VectorIntT*, size : LibC::Long) : LibC::Int
  fun vector_int_push_back = igraph_vector_int_push_back(v : VectorIntT*, e : LibC::Int) : LibC::Int
  fun vector_int_pop_back = igraph_vector_int_pop_back(v : VectorIntT*) : LibC::Int
  fun vector_int_insert = igraph_vector_int_insert(v : VectorIntT*, pos : LibC::Long, value : LibC::Int) : LibC::Int
  fun vector_int_remove = igraph_vector_int_remove(v : VectorIntT*, elem : LibC::Long)
  fun vector_int_remove_section = igraph_vector_int_remove_section(v : VectorIntT*, from : LibC::Long, to : LibC::Long)
  fun vector_int_sort = igraph_vector_int_sort(v : VectorIntT*)
  fun vector_int_qsort_ind = igraph_vector_int_qsort_ind(v : VectorIntT*, inds : VectorT*, descending : BoolT) : LibC::Long
  fun vector_int_print = igraph_vector_int_print(v : VectorIntT*) : LibC::Int
  fun vector_int_printf = igraph_vector_int_printf(v : VectorIntT*, format : LibC::Char*) : LibC::Int
  fun vector_int_fprint = igraph_vector_int_fprint(v : VectorIntT*, file : File*) : LibC::Int
  fun vector_int_init_real = igraph_vector_int_init_real(v : VectorIntT*, no : LibC::Int, ...) : LibC::Int
  fun vector_int_init_int = igraph_vector_int_init_int(v : VectorIntT*, no : LibC::Int, ...) : LibC::Int
  fun vector_int_init_real_end = igraph_vector_int_init_real_end(v : VectorIntT*, endmark : LibC::Int, ...) : LibC::Int
  fun vector_int_init_int_end = igraph_vector_int_init_int_end(v : VectorIntT*, endmark : LibC::Int, ...) : LibC::Int
  fun vector_int_move_interval = igraph_vector_int_move_interval(v : VectorIntT*, begin : LibC::Long, _end : LibC::Long, to : LibC::Long) : LibC::Int
  fun vector_int_move_interval2 = igraph_vector_int_move_interval2(v : VectorIntT*, begin : LibC::Long, _end : LibC::Long, to : LibC::Long) : LibC::Int
  fun vector_int_permdelete = igraph_vector_int_permdelete(v : VectorIntT*, index : VectorT*, nremove : LibC::Long)
  fun vector_int_filter_smaller = igraph_vector_int_filter_smaller(v : VectorIntT*, elem : LibC::Int) : LibC::Int
  fun vector_int_get_interval = igraph_vector_int_get_interval(v : VectorIntT*, res : VectorIntT*, from : LibC::Long, to : LibC::Long) : LibC::Int
  fun vector_int_difference_sorted = igraph_vector_int_difference_sorted(v1 : VectorIntT*, v2 : VectorIntT*, result : VectorIntT*) : LibC::Int
  fun vector_int_intersect_sorted = igraph_vector_int_intersect_sorted(v1 : VectorIntT*, v2 : VectorIntT*, result : VectorIntT*) : LibC::Int
  fun vector_int_index = igraph_vector_int_index(v : VectorIntT*, newv : VectorIntT*, idx : VectorT*) : LibC::Int
  fun vector_int_index_int = igraph_vector_int_index_int(v : VectorIntT*, idx : VectorIntT*) : LibC::Int
  fun vector_complex_init = igraph_vector_complex_init(v : VectorComplexT*, size : LibC::Long) : LibC::Int
  fun vector_complex_init_copy = igraph_vector_complex_init_copy(v : VectorComplexT*, data : ComplexT*, length : LibC::Long) : LibC::Int
  fun vector_complex_init_seq = igraph_vector_complex_init_seq(v : VectorComplexT*, from : ComplexT, to : ComplexT) : LibC::Int
  fun vector_complex_copy = igraph_vector_complex_copy(to : VectorComplexT*, from : VectorComplexT*) : LibC::Int
  fun vector_complex_destroy = igraph_vector_complex_destroy(v : VectorComplexT*)
  fun vector_complex_capacity = igraph_vector_complex_capacity(v : VectorComplexT*) : LibC::Long
  fun vector_complex_e = igraph_vector_complex_e(v : VectorComplexT*, pos : LibC::Long) : ComplexT
  fun vector_complex_e_ptr = igraph_vector_complex_e_ptr(v : VectorComplexT*, pos : LibC::Long) : ComplexT*
  fun vector_complex_set = igraph_vector_complex_set(v : VectorComplexT*, pos : LibC::Long, value : ComplexT)
  fun vector_complex_tail = igraph_vector_complex_tail(v : VectorComplexT*) : ComplexT
  fun vector_complex_null = igraph_vector_complex_null(v : VectorComplexT*)
  fun vector_complex_fill = igraph_vector_complex_fill(v : VectorComplexT*, e : ComplexT)
  fun vector_complex_view = igraph_vector_complex_view(v : VectorComplexT*, data : ComplexT*, length : LibC::Long) : VectorComplexT*
  fun vector_complex_copy_to = igraph_vector_complex_copy_to(v : VectorComplexT*, to : ComplexT*)
  fun vector_complex_update = igraph_vector_complex_update(to : VectorComplexT*, from : VectorComplexT*) : LibC::Int
  fun vector_complex_append = igraph_vector_complex_append(to : VectorComplexT*, from : VectorComplexT*) : LibC::Int
  fun vector_complex_swap = igraph_vector_complex_swap(v1 : VectorComplexT*, v2 : VectorComplexT*) : LibC::Int
  fun vector_complex_swap_elements = igraph_vector_complex_swap_elements(v : VectorComplexT*, i : LibC::Long, j : LibC::Long) : LibC::Int
  fun vector_complex_reverse = igraph_vector_complex_reverse(v : VectorComplexT*) : LibC::Int
  fun vector_complex_shuffle = igraph_vector_complex_shuffle(v : VectorComplexT*) : LibC::Int
  fun vector_complex_add_constant = igraph_vector_complex_add_constant(v : VectorComplexT*, plus : ComplexT)
  fun vector_complex_scale = igraph_vector_complex_scale(v : VectorComplexT*, by : ComplexT)
  fun vector_complex_add = igraph_vector_complex_add(v1 : VectorComplexT*, v2 : VectorComplexT*) : LibC::Int
  fun vector_complex_sub = igraph_vector_complex_sub(v1 : VectorComplexT*, v2 : VectorComplexT*) : LibC::Int
  fun vector_complex_mul = igraph_vector_complex_mul(v1 : VectorComplexT*, v2 : VectorComplexT*) : LibC::Int
  fun vector_complex_div = igraph_vector_complex_div(v1 : VectorComplexT*, v2 : VectorComplexT*) : LibC::Int
  fun vector_complex_cumsum = igraph_vector_complex_cumsum(to : VectorComplexT*, from : VectorComplexT*) : LibC::Int
  fun vector_complex_all_e = igraph_vector_complex_all_e(lhs : VectorComplexT*, rhs : VectorComplexT*) : BoolT
  fun vector_complex_all_l = igraph_vector_complex_all_l(lhs : VectorComplexT*, rhs : VectorComplexT*) : BoolT
  fun vector_complex_all_g = igraph_vector_complex_all_g(lhs : VectorComplexT*, rhs : VectorComplexT*) : BoolT
  fun vector_complex_all_le = igraph_vector_complex_all_le(lhs : VectorComplexT*, rhs : VectorComplexT*) : BoolT
  fun vector_complex_all_ge = igraph_vector_complex_all_ge(lhs : VectorComplexT*, rhs : VectorComplexT*) : BoolT
  fun vector_complex_min = igraph_vector_complex_min(v : VectorComplexT*) : ComplexT
  fun vector_complex_max = igraph_vector_complex_max(v : VectorComplexT*) : ComplexT
  fun vector_complex_which_min = igraph_vector_complex_which_min(v : VectorComplexT*) : LibC::Long
  fun vector_complex_which_max = igraph_vector_complex_which_max(v : VectorComplexT*) : LibC::Long
  fun vector_complex_minmax = igraph_vector_complex_minmax(v : VectorComplexT*, min : ComplexT*, max : ComplexT*) : LibC::Int
  fun vector_complex_which_minmax = igraph_vector_complex_which_minmax(v : VectorComplexT*, which_min : LibC::Long*, which_max : LibC::Long*) : LibC::Int
  fun vector_complex_empty = igraph_vector_complex_empty(v : VectorComplexT*) : BoolT
  fun vector_complex_size = igraph_vector_complex_size(v : VectorComplexT*) : LibC::Long
  fun vector_complex_isnull = igraph_vector_complex_isnull(v : VectorComplexT*) : BoolT
  fun vector_complex_sum = igraph_vector_complex_sum(v : VectorComplexT*) : ComplexT
  fun vector_complex_sumsq = igraph_vector_complex_sumsq(v : VectorComplexT*) : RealT
  fun vector_complex_prod = igraph_vector_complex_prod(v : VectorComplexT*) : ComplexT
  fun vector_complex_isininterval = igraph_vector_complex_isininterval(v : VectorComplexT*, low : ComplexT, high : ComplexT) : BoolT
  fun vector_complex_any_smaller = igraph_vector_complex_any_smaller(v : VectorComplexT*, limit : ComplexT) : BoolT
  fun vector_complex_is_equal = igraph_vector_complex_is_equal(lhs : VectorComplexT*, rhs : VectorComplexT*) : BoolT
  fun vector_complex_maxdifference = igraph_vector_complex_maxdifference(m1 : VectorComplexT*, m2 : VectorComplexT*) : ComplexT
  fun vector_complex_contains = igraph_vector_complex_contains(v : VectorComplexT*, e : ComplexT) : BoolT
  fun vector_complex_search = igraph_vector_complex_search(v : VectorComplexT*, from : LibC::Long, what : ComplexT, pos : LibC::Long*) : BoolT
  fun vector_complex_binsearch = igraph_vector_complex_binsearch(v : VectorComplexT*, what : ComplexT, pos : LibC::Long*) : BoolT
  fun vector_complex_binsearch2 = igraph_vector_complex_binsearch2(v : VectorComplexT*, what : ComplexT) : BoolT
  fun vector_complex_clear = igraph_vector_complex_clear(v : VectorComplexT*)
  fun vector_complex_resize = igraph_vector_complex_resize(v : VectorComplexT*, newsize : LibC::Long) : LibC::Int
  fun vector_complex_resize_min = igraph_vector_complex_resize_min(v : VectorComplexT*) : LibC::Int
  fun vector_complex_reserve = igraph_vector_complex_reserve(v : VectorComplexT*, size : LibC::Long) : LibC::Int
  fun vector_complex_push_back = igraph_vector_complex_push_back(v : VectorComplexT*, e : ComplexT) : LibC::Int
  fun vector_complex_pop_back = igraph_vector_complex_pop_back(v : VectorComplexT*) : ComplexT
  fun vector_complex_insert = igraph_vector_complex_insert(v : VectorComplexT*, pos : LibC::Long, value : ComplexT) : LibC::Int
  fun vector_complex_remove = igraph_vector_complex_remove(v : VectorComplexT*, elem : LibC::Long)
  fun vector_complex_remove_section = igraph_vector_complex_remove_section(v : VectorComplexT*, from : LibC::Long, to : LibC::Long)
  fun vector_complex_sort = igraph_vector_complex_sort(v : VectorComplexT*)
  fun vector_complex_qsort_ind = igraph_vector_complex_qsort_ind(v : VectorComplexT*, inds : VectorT*, descending : BoolT) : LibC::Long
  fun vector_complex_print = igraph_vector_complex_print(v : VectorComplexT*) : LibC::Int
  fun vector_complex_printf = igraph_vector_complex_printf(v : VectorComplexT*, format : LibC::Char*) : LibC::Int
  fun vector_complex_fprint = igraph_vector_complex_fprint(v : VectorComplexT*, file : File*) : LibC::Int
  fun vector_complex_real = igraph_vector_complex_real(v : VectorComplexT*, real : VectorT*) : LibC::Int
  fun vector_complex_imag = igraph_vector_complex_imag(v : VectorComplexT*, imag : VectorT*) : LibC::Int
  fun vector_complex_realimag = igraph_vector_complex_realimag(v : VectorComplexT*, real : VectorT*, imag : VectorT*) : LibC::Int
  fun vector_complex_create = igraph_vector_complex_create(v : VectorComplexT*, real : VectorT*, imag : VectorT*) : LibC::Int
  fun vector_complex_create_polar = igraph_vector_complex_create_polar(v : VectorComplexT*, r : VectorT*, theta : VectorT*) : LibC::Int
  fun vector_complex_init_real = igraph_vector_complex_init_real(v : VectorComplexT*, no : LibC::Int, ...) : LibC::Int
  fun vector_complex_init_int = igraph_vector_complex_init_int(v : VectorComplexT*, no : LibC::Int, ...) : LibC::Int
  fun vector_complex_init_real_end = igraph_vector_complex_init_real_end(v : VectorComplexT*, endmark : ComplexT, ...) : LibC::Int
  fun vector_complex_init_int_end = igraph_vector_complex_init_int_end(v : VectorComplexT*, endmark : LibC::Int, ...) : LibC::Int
  fun vector_complex_move_interval = igraph_vector_complex_move_interval(v : VectorComplexT*, begin : LibC::Long, _end : LibC::Long, to : LibC::Long) : LibC::Int
  fun vector_complex_move_interval2 = igraph_vector_complex_move_interval2(v : VectorComplexT*, begin : LibC::Long, _end : LibC::Long, to : LibC::Long) : LibC::Int
  fun vector_complex_permdelete = igraph_vector_complex_permdelete(v : VectorComplexT*, index : VectorT*, nremove : LibC::Long)
  fun vector_complex_filter_smaller = igraph_vector_complex_filter_smaller(v : VectorComplexT*, elem : ComplexT) : LibC::Int
  fun vector_complex_get_interval = igraph_vector_complex_get_interval(v : VectorComplexT*, res : VectorComplexT*, from : LibC::Long, to : LibC::Long) : LibC::Int
  fun vector_complex_difference_sorted = igraph_vector_complex_difference_sorted(v1 : VectorComplexT*, v2 : VectorComplexT*, result : VectorComplexT*) : LibC::Int
  fun vector_complex_intersect_sorted = igraph_vector_complex_intersect_sorted(v1 : VectorComplexT*, v2 : VectorComplexT*, result : VectorComplexT*) : LibC::Int
  fun vector_complex_index = igraph_vector_complex_index(v : VectorComplexT*, newv : VectorComplexT*, idx : VectorT*) : LibC::Int
  fun vector_complex_index_int = igraph_vector_complex_index_int(v : VectorComplexT*, idx : VectorIntT*) : LibC::Int
  fun vector_floor = igraph_vector_floor(from : VectorT*, to : VectorLongT*) : LibC::Int
  fun vector_round = igraph_vector_round(from : VectorT*, to : VectorLongT*) : LibC::Int
  fun vector_e_tol = igraph_vector_e_tol(lhs : VectorT*, rhs : VectorT*, tol : RealT) : BoolT
  fun vector_order = igraph_vector_order(v : VectorT*, v2 : VectorT*, res : VectorT*, maxval : RealT) : LibC::Int
  fun vector_order1 = igraph_vector_order1(v : VectorT*, res : VectorT*, maxval : RealT) : LibC::Int
  fun vector_order1_int = igraph_vector_order1_int(v : VectorT*, res : VectorIntT*, maxval : RealT) : LibC::Int
  fun vector_order2 = igraph_vector_order2(v : VectorT*) : LibC::Int
  fun vector_rank = igraph_vector_rank(v : VectorT*, res : VectorT*, nodes : LibC::Long) : LibC::Int
  struct MatrixT
    data : VectorT
    nrow : LibC::Long
    ncol : LibC::Long
  end
  fun matrix_init = igraph_matrix_init(m : MatrixT*, nrow : LibC::Long, ncol : LibC::Long) : LibC::Int
  fun matrix_copy = igraph_matrix_copy(to : MatrixT*, from : MatrixT*) : LibC::Int
  fun matrix_destroy = igraph_matrix_destroy(m : MatrixT*)
  fun matrix_capacity = igraph_matrix_capacity(m : MatrixT*) : LibC::Long
  fun matrix_e = igraph_matrix_e(m : MatrixT*, row : LibC::Long, col : LibC::Long) : RealT
  fun matrix_e_ptr = igraph_matrix_e_ptr(m : MatrixT*, row : LibC::Long, col : LibC::Long) : RealT*
  fun matrix_set = igraph_matrix_set(m : MatrixT*, row : LibC::Long, col : LibC::Long, value : RealT)
  fun matrix_null = igraph_matrix_null(m : MatrixT*)
  fun matrix_fill = igraph_matrix_fill(m : MatrixT*, e : RealT)
  fun matrix_copy_to = igraph_matrix_copy_to(m : MatrixT*, to : RealT*)
  fun matrix_update = igraph_matrix_update(to : MatrixT*, from : MatrixT*) : LibC::Int
  fun matrix_rbind = igraph_matrix_rbind(to : MatrixT*, from : MatrixT*) : LibC::Int
  fun matrix_cbind = igraph_matrix_cbind(to : MatrixT*, from : MatrixT*) : LibC::Int
  fun matrix_swap = igraph_matrix_swap(m1 : MatrixT*, m2 : MatrixT*) : LibC::Int
  fun matrix_get_row = igraph_matrix_get_row(m : MatrixT*, res : VectorT*, index : LibC::Long) : LibC::Int
  fun matrix_get_col = igraph_matrix_get_col(m : MatrixT*, res : VectorT*, index : LibC::Long) : LibC::Int
  fun matrix_set_row = igraph_matrix_set_row(m : MatrixT*, v : VectorT*, index : LibC::Long) : LibC::Int
  fun matrix_set_col = igraph_matrix_set_col(m : MatrixT*, v : VectorT*, index : LibC::Long) : LibC::Int
  fun matrix_select_rows = igraph_matrix_select_rows(m : MatrixT*, res : MatrixT*, rows : VectorT*) : LibC::Int
  fun matrix_select_cols = igraph_matrix_select_cols(m : MatrixT*, res : MatrixT*, cols : VectorT*) : LibC::Int
  fun matrix_select_rows_cols = igraph_matrix_select_rows_cols(m : MatrixT*, res : MatrixT*, rows : VectorT*, cols : VectorT*) : LibC::Int
  fun matrix_swap_rows = igraph_matrix_swap_rows(m : MatrixT*, i : LibC::Long, j : LibC::Long) : LibC::Int
  fun matrix_swap_cols = igraph_matrix_swap_cols(m : MatrixT*, i : LibC::Long, j : LibC::Long) : LibC::Int
  fun matrix_swap_rowcol = igraph_matrix_swap_rowcol(m : MatrixT*, i : LibC::Long, j : LibC::Long) : LibC::Int
  fun matrix_transpose = igraph_matrix_transpose(m : MatrixT*) : LibC::Int
  fun matrix_add = igraph_matrix_add(m1 : MatrixT*, m2 : MatrixT*) : LibC::Int
  fun matrix_sub = igraph_matrix_sub(m1 : MatrixT*, m2 : MatrixT*) : LibC::Int
  fun matrix_mul_elements = igraph_matrix_mul_elements(m1 : MatrixT*, m2 : MatrixT*) : LibC::Int
  fun matrix_div_elements = igraph_matrix_div_elements(m1 : MatrixT*, m2 : MatrixT*) : LibC::Int
  fun matrix_scale = igraph_matrix_scale(m : MatrixT*, by : RealT)
  fun matrix_add_constant = igraph_matrix_add_constant(m : MatrixT*, plus : RealT)
  fun matrix_min = igraph_matrix_min(m : MatrixT*) : RealT
  fun matrix_max = igraph_matrix_max(m : MatrixT*) : RealT
  fun matrix_which_min = igraph_matrix_which_min(m : MatrixT*, i : LibC::Long*, j : LibC::Long*) : LibC::Int
  fun matrix_which_max = igraph_matrix_which_max(m : MatrixT*, i : LibC::Long*, j : LibC::Long*) : LibC::Int
  fun matrix_minmax = igraph_matrix_minmax(m : MatrixT*, min : RealT*, max : RealT*) : LibC::Int
  fun matrix_which_minmax = igraph_matrix_which_minmax(m : MatrixT*, imin : LibC::Long*, jmin : LibC::Long*, imax : LibC::Long*, jmax : LibC::Long*) : LibC::Int
  fun matrix_all_e = igraph_matrix_all_e(lhs : MatrixT*, rhs : MatrixT*) : BoolT
  fun matrix_all_l = igraph_matrix_all_l(lhs : MatrixT*, rhs : MatrixT*) : BoolT
  fun matrix_all_g = igraph_matrix_all_g(lhs : MatrixT*, rhs : MatrixT*) : BoolT
  fun matrix_all_le = igraph_matrix_all_le(lhs : MatrixT*, rhs : MatrixT*) : BoolT
  fun matrix_all_ge = igraph_matrix_all_ge(lhs : MatrixT*, rhs : MatrixT*) : BoolT
  fun matrix_isnull = igraph_matrix_isnull(m : MatrixT*) : BoolT
  fun matrix_empty = igraph_matrix_empty(m : MatrixT*) : BoolT
  fun matrix_size = igraph_matrix_size(m : MatrixT*) : LibC::Long
  fun matrix_nrow = igraph_matrix_nrow(m : MatrixT*) : LibC::Long
  fun matrix_ncol = igraph_matrix_ncol(m : MatrixT*) : LibC::Long
  fun matrix_is_symmetric = igraph_matrix_is_symmetric(m : MatrixT*) : BoolT
  fun matrix_sum = igraph_matrix_sum(m : MatrixT*) : RealT
  fun matrix_prod = igraph_matrix_prod(m : MatrixT*) : RealT
  fun matrix_rowsum = igraph_matrix_rowsum(m : MatrixT*, res : VectorT*) : LibC::Int
  fun matrix_colsum = igraph_matrix_colsum(m : MatrixT*, res : VectorT*) : LibC::Int
  fun matrix_is_equal = igraph_matrix_is_equal(m1 : MatrixT*, m2 : MatrixT*) : BoolT
  fun matrix_maxdifference = igraph_matrix_maxdifference(m1 : MatrixT*, m2 : MatrixT*) : RealT
  fun matrix_contains = igraph_matrix_contains(m : MatrixT*, e : RealT) : BoolT
  fun matrix_search = igraph_matrix_search(m : MatrixT*, from : LibC::Long, what : RealT, pos : LibC::Long*, row : LibC::Long*, col : LibC::Long*) : BoolT
  fun matrix_resize = igraph_matrix_resize(m : MatrixT*, nrow : LibC::Long, ncol : LibC::Long) : LibC::Int
  fun matrix_resize_min = igraph_matrix_resize_min(m : MatrixT*) : LibC::Int
  fun matrix_add_cols = igraph_matrix_add_cols(m : MatrixT*, n : LibC::Long) : LibC::Int
  fun matrix_add_rows = igraph_matrix_add_rows(m : MatrixT*, n : LibC::Long) : LibC::Int
  fun matrix_remove_col = igraph_matrix_remove_col(m : MatrixT*, col : LibC::Long) : LibC::Int
  fun matrix_remove_row = igraph_matrix_remove_row(m : MatrixT*, row : LibC::Long) : LibC::Int
  fun matrix_print = igraph_matrix_print(m : MatrixT*) : LibC::Int
  fun matrix_printf = igraph_matrix_printf(m : MatrixT*, format : LibC::Char*) : LibC::Int
  fun matrix_fprint = igraph_matrix_fprint(m : MatrixT*, file : File*) : LibC::Int
  fun matrix_permdelete_rows = igraph_matrix_permdelete_rows(m : MatrixT*, index : LibC::Long*, nremove : LibC::Long) : LibC::Int
  fun matrix_delete_rows_neg = igraph_matrix_delete_rows_neg(m : MatrixT*, neg : VectorT*, nremove : LibC::Long) : LibC::Int
  struct MatrixIntT
    data : VectorIntT
    nrow : LibC::Long
    ncol : LibC::Long
  end
  fun matrix_int_init = igraph_matrix_int_init(m : MatrixIntT*, nrow : LibC::Long, ncol : LibC::Long) : LibC::Int
  fun matrix_int_copy = igraph_matrix_int_copy(to : MatrixIntT*, from : MatrixIntT*) : LibC::Int
  fun matrix_int_destroy = igraph_matrix_int_destroy(m : MatrixIntT*)
  fun matrix_int_capacity = igraph_matrix_int_capacity(m : MatrixIntT*) : LibC::Long
  fun matrix_int_e = igraph_matrix_int_e(m : MatrixIntT*, row : LibC::Long, col : LibC::Long) : LibC::Int
  fun matrix_int_e_ptr = igraph_matrix_int_e_ptr(m : MatrixIntT*, row : LibC::Long, col : LibC::Long) : LibC::Int*
  fun matrix_int_set = igraph_matrix_int_set(m : MatrixIntT*, row : LibC::Long, col : LibC::Long, value : LibC::Int)
  fun matrix_int_null = igraph_matrix_int_null(m : MatrixIntT*)
  fun matrix_int_fill = igraph_matrix_int_fill(m : MatrixIntT*, e : LibC::Int)
  fun matrix_int_copy_to = igraph_matrix_int_copy_to(m : MatrixIntT*, to : LibC::Int*)
  fun matrix_int_update = igraph_matrix_int_update(to : MatrixIntT*, from : MatrixIntT*) : LibC::Int
  fun matrix_int_rbind = igraph_matrix_int_rbind(to : MatrixIntT*, from : MatrixIntT*) : LibC::Int
  fun matrix_int_cbind = igraph_matrix_int_cbind(to : MatrixIntT*, from : MatrixIntT*) : LibC::Int
  fun matrix_int_swap = igraph_matrix_int_swap(m1 : MatrixIntT*, m2 : MatrixIntT*) : LibC::Int
  fun matrix_int_get_row = igraph_matrix_int_get_row(m : MatrixIntT*, res : VectorIntT*, index : LibC::Long) : LibC::Int
  fun matrix_int_get_col = igraph_matrix_int_get_col(m : MatrixIntT*, res : VectorIntT*, index : LibC::Long) : LibC::Int
  fun matrix_int_set_row = igraph_matrix_int_set_row(m : MatrixIntT*, v : VectorIntT*, index : LibC::Long) : LibC::Int
  fun matrix_int_set_col = igraph_matrix_int_set_col(m : MatrixIntT*, v : VectorIntT*, index : LibC::Long) : LibC::Int
  fun matrix_int_select_rows = igraph_matrix_int_select_rows(m : MatrixIntT*, res : MatrixIntT*, rows : VectorT*) : LibC::Int
  fun matrix_int_select_cols = igraph_matrix_int_select_cols(m : MatrixIntT*, res : MatrixIntT*, cols : VectorT*) : LibC::Int
  fun matrix_int_select_rows_cols = igraph_matrix_int_select_rows_cols(m : MatrixIntT*, res : MatrixIntT*, rows : VectorT*, cols : VectorT*) : LibC::Int
  fun matrix_int_swap_rows = igraph_matrix_int_swap_rows(m : MatrixIntT*, i : LibC::Long, j : LibC::Long) : LibC::Int
  fun matrix_int_swap_cols = igraph_matrix_int_swap_cols(m : MatrixIntT*, i : LibC::Long, j : LibC::Long) : LibC::Int
  fun matrix_int_swap_rowcol = igraph_matrix_int_swap_rowcol(m : MatrixIntT*, i : LibC::Long, j : LibC::Long) : LibC::Int
  fun matrix_int_transpose = igraph_matrix_int_transpose(m : MatrixIntT*) : LibC::Int
  fun matrix_int_add = igraph_matrix_int_add(m1 : MatrixIntT*, m2 : MatrixIntT*) : LibC::Int
  fun matrix_int_sub = igraph_matrix_int_sub(m1 : MatrixIntT*, m2 : MatrixIntT*) : LibC::Int
  fun matrix_int_mul_elements = igraph_matrix_int_mul_elements(m1 : MatrixIntT*, m2 : MatrixIntT*) : LibC::Int
  fun matrix_int_div_elements = igraph_matrix_int_div_elements(m1 : MatrixIntT*, m2 : MatrixIntT*) : LibC::Int
  fun matrix_int_scale = igraph_matrix_int_scale(m : MatrixIntT*, by : LibC::Int)
  fun matrix_int_add_constant = igraph_matrix_int_add_constant(m : MatrixIntT*, plus : LibC::Int)
  fun matrix_int_min = igraph_matrix_int_min(m : MatrixIntT*) : RealT
  fun matrix_int_max = igraph_matrix_int_max(m : MatrixIntT*) : RealT
  fun matrix_int_which_min = igraph_matrix_int_which_min(m : MatrixIntT*, i : LibC::Long*, j : LibC::Long*) : LibC::Int
  fun matrix_int_which_max = igraph_matrix_int_which_max(m : MatrixIntT*, i : LibC::Long*, j : LibC::Long*) : LibC::Int
  fun matrix_int_minmax = igraph_matrix_int_minmax(m : MatrixIntT*, min : LibC::Int*, max : LibC::Int*) : LibC::Int
  fun matrix_int_which_minmax = igraph_matrix_int_which_minmax(m : MatrixIntT*, imin : LibC::Long*, jmin : LibC::Long*, imax : LibC::Long*, jmax : LibC::Long*) : LibC::Int
  fun matrix_int_all_e = igraph_matrix_int_all_e(lhs : MatrixIntT*, rhs : MatrixIntT*) : BoolT
  fun matrix_int_all_l = igraph_matrix_int_all_l(lhs : MatrixIntT*, rhs : MatrixIntT*) : BoolT
  fun matrix_int_all_g = igraph_matrix_int_all_g(lhs : MatrixIntT*, rhs : MatrixIntT*) : BoolT
  fun matrix_int_all_le = igraph_matrix_int_all_le(lhs : MatrixIntT*, rhs : MatrixIntT*) : BoolT
  fun matrix_int_all_ge = igraph_matrix_int_all_ge(lhs : MatrixIntT*, rhs : MatrixIntT*) : BoolT
  fun matrix_int_isnull = igraph_matrix_int_isnull(m : MatrixIntT*) : BoolT
  fun matrix_int_empty = igraph_matrix_int_empty(m : MatrixIntT*) : BoolT
  fun matrix_int_size = igraph_matrix_int_size(m : MatrixIntT*) : LibC::Long
  fun matrix_int_nrow = igraph_matrix_int_nrow(m : MatrixIntT*) : LibC::Long
  fun matrix_int_ncol = igraph_matrix_int_ncol(m : MatrixIntT*) : LibC::Long
  fun matrix_int_is_symmetric = igraph_matrix_int_is_symmetric(m : MatrixIntT*) : BoolT
  fun matrix_int_sum = igraph_matrix_int_sum(m : MatrixIntT*) : LibC::Int
  fun matrix_int_prod = igraph_matrix_int_prod(m : MatrixIntT*) : LibC::Int
  fun matrix_int_rowsum = igraph_matrix_int_rowsum(m : MatrixIntT*, res : VectorIntT*) : LibC::Int
  fun matrix_int_colsum = igraph_matrix_int_colsum(m : MatrixIntT*, res : VectorIntT*) : LibC::Int
  fun matrix_int_is_equal = igraph_matrix_int_is_equal(m1 : MatrixIntT*, m2 : MatrixIntT*) : BoolT
  fun matrix_int_maxdifference = igraph_matrix_int_maxdifference(m1 : MatrixIntT*, m2 : MatrixIntT*) : LibC::Int
  fun matrix_int_contains = igraph_matrix_int_contains(m : MatrixIntT*, e : LibC::Int) : BoolT
  fun matrix_int_search = igraph_matrix_int_search(m : MatrixIntT*, from : LibC::Long, what : LibC::Int, pos : LibC::Long*, row : LibC::Long*, col : LibC::Long*) : BoolT
  fun matrix_int_resize = igraph_matrix_int_resize(m : MatrixIntT*, nrow : LibC::Long, ncol : LibC::Long) : LibC::Int
  fun matrix_int_resize_min = igraph_matrix_int_resize_min(m : MatrixIntT*) : LibC::Int
  fun matrix_int_add_cols = igraph_matrix_int_add_cols(m : MatrixIntT*, n : LibC::Long) : LibC::Int
  fun matrix_int_add_rows = igraph_matrix_int_add_rows(m : MatrixIntT*, n : LibC::Long) : LibC::Int
  fun matrix_int_remove_col = igraph_matrix_int_remove_col(m : MatrixIntT*, col : LibC::Long) : LibC::Int
  fun matrix_int_remove_row = igraph_matrix_int_remove_row(m : MatrixIntT*, row : LibC::Long) : LibC::Int
  fun matrix_int_print = igraph_matrix_int_print(m : MatrixIntT*) : LibC::Int
  fun matrix_int_printf = igraph_matrix_int_printf(m : MatrixIntT*, format : LibC::Char*) : LibC::Int
  fun matrix_int_fprint = igraph_matrix_int_fprint(m : MatrixIntT*, file : File*) : LibC::Int
  fun matrix_int_permdelete_rows = igraph_matrix_int_permdelete_rows(m : MatrixIntT*, index : LibC::Long*, nremove : LibC::Long) : LibC::Int
  fun matrix_int_delete_rows_neg = igraph_matrix_int_delete_rows_neg(m : MatrixIntT*, neg : VectorT*, nremove : LibC::Long) : LibC::Int
  struct MatrixLongT
    data : VectorLongT
    nrow : LibC::Long
    ncol : LibC::Long
  end
  fun matrix_long_init = igraph_matrix_long_init(m : MatrixLongT*, nrow : LibC::Long, ncol : LibC::Long) : LibC::Int
  fun matrix_long_copy = igraph_matrix_long_copy(to : MatrixLongT*, from : MatrixLongT*) : LibC::Int
  fun matrix_long_destroy = igraph_matrix_long_destroy(m : MatrixLongT*)
  fun matrix_long_capacity = igraph_matrix_long_capacity(m : MatrixLongT*) : LibC::Long
  fun matrix_long_e = igraph_matrix_long_e(m : MatrixLongT*, row : LibC::Long, col : LibC::Long) : LibC::Long
  fun matrix_long_e_ptr = igraph_matrix_long_e_ptr(m : MatrixLongT*, row : LibC::Long, col : LibC::Long) : LibC::Long*
  fun matrix_long_set = igraph_matrix_long_set(m : MatrixLongT*, row : LibC::Long, col : LibC::Long, value : LibC::Long)
  fun matrix_long_null = igraph_matrix_long_null(m : MatrixLongT*)
  fun matrix_long_fill = igraph_matrix_long_fill(m : MatrixLongT*, e : LibC::Long)
  fun matrix_long_copy_to = igraph_matrix_long_copy_to(m : MatrixLongT*, to : LibC::Long*)
  fun matrix_long_update = igraph_matrix_long_update(to : MatrixLongT*, from : MatrixLongT*) : LibC::Int
  fun matrix_long_rbind = igraph_matrix_long_rbind(to : MatrixLongT*, from : MatrixLongT*) : LibC::Int
  fun matrix_long_cbind = igraph_matrix_long_cbind(to : MatrixLongT*, from : MatrixLongT*) : LibC::Int
  fun matrix_long_swap = igraph_matrix_long_swap(m1 : MatrixLongT*, m2 : MatrixLongT*) : LibC::Int
  fun matrix_long_get_row = igraph_matrix_long_get_row(m : MatrixLongT*, res : VectorLongT*, index : LibC::Long) : LibC::Int
  fun matrix_long_get_col = igraph_matrix_long_get_col(m : MatrixLongT*, res : VectorLongT*, index : LibC::Long) : LibC::Int
  fun matrix_long_set_row = igraph_matrix_long_set_row(m : MatrixLongT*, v : VectorLongT*, index : LibC::Long) : LibC::Int
  fun matrix_long_set_col = igraph_matrix_long_set_col(m : MatrixLongT*, v : VectorLongT*, index : LibC::Long) : LibC::Int
  fun matrix_long_select_rows = igraph_matrix_long_select_rows(m : MatrixLongT*, res : MatrixLongT*, rows : VectorT*) : LibC::Int
  fun matrix_long_select_cols = igraph_matrix_long_select_cols(m : MatrixLongT*, res : MatrixLongT*, cols : VectorT*) : LibC::Int
  fun matrix_long_select_rows_cols = igraph_matrix_long_select_rows_cols(m : MatrixLongT*, res : MatrixLongT*, rows : VectorT*, cols : VectorT*) : LibC::Int
  fun matrix_long_swap_rows = igraph_matrix_long_swap_rows(m : MatrixLongT*, i : LibC::Long, j : LibC::Long) : LibC::Int
  fun matrix_long_swap_cols = igraph_matrix_long_swap_cols(m : MatrixLongT*, i : LibC::Long, j : LibC::Long) : LibC::Int
  fun matrix_long_swap_rowcol = igraph_matrix_long_swap_rowcol(m : MatrixLongT*, i : LibC::Long, j : LibC::Long) : LibC::Int
  fun matrix_long_transpose = igraph_matrix_long_transpose(m : MatrixLongT*) : LibC::Int
  fun matrix_long_add = igraph_matrix_long_add(m1 : MatrixLongT*, m2 : MatrixLongT*) : LibC::Int
  fun matrix_long_sub = igraph_matrix_long_sub(m1 : MatrixLongT*, m2 : MatrixLongT*) : LibC::Int
  fun matrix_long_mul_elements = igraph_matrix_long_mul_elements(m1 : MatrixLongT*, m2 : MatrixLongT*) : LibC::Int
  fun matrix_long_div_elements = igraph_matrix_long_div_elements(m1 : MatrixLongT*, m2 : MatrixLongT*) : LibC::Int
  fun matrix_long_scale = igraph_matrix_long_scale(m : MatrixLongT*, by : LibC::Long)
  fun matrix_long_add_constant = igraph_matrix_long_add_constant(m : MatrixLongT*, plus : LibC::Long)
  fun matrix_long_min = igraph_matrix_long_min(m : MatrixLongT*) : RealT
  fun matrix_long_max = igraph_matrix_long_max(m : MatrixLongT*) : RealT
  fun matrix_long_which_min = igraph_matrix_long_which_min(m : MatrixLongT*, i : LibC::Long*, j : LibC::Long*) : LibC::Int
  fun matrix_long_which_max = igraph_matrix_long_which_max(m : MatrixLongT*, i : LibC::Long*, j : LibC::Long*) : LibC::Int
  fun matrix_long_minmax = igraph_matrix_long_minmax(m : MatrixLongT*, min : LibC::Long*, max : LibC::Long*) : LibC::Int
  fun matrix_long_which_minmax = igraph_matrix_long_which_minmax(m : MatrixLongT*, imin : LibC::Long*, jmin : LibC::Long*, imax : LibC::Long*, jmax : LibC::Long*) : LibC::Int
  fun matrix_long_all_e = igraph_matrix_long_all_e(lhs : MatrixLongT*, rhs : MatrixLongT*) : BoolT
  fun matrix_long_all_l = igraph_matrix_long_all_l(lhs : MatrixLongT*, rhs : MatrixLongT*) : BoolT
  fun matrix_long_all_g = igraph_matrix_long_all_g(lhs : MatrixLongT*, rhs : MatrixLongT*) : BoolT
  fun matrix_long_all_le = igraph_matrix_long_all_le(lhs : MatrixLongT*, rhs : MatrixLongT*) : BoolT
  fun matrix_long_all_ge = igraph_matrix_long_all_ge(lhs : MatrixLongT*, rhs : MatrixLongT*) : BoolT
  fun matrix_long_isnull = igraph_matrix_long_isnull(m : MatrixLongT*) : BoolT
  fun matrix_long_empty = igraph_matrix_long_empty(m : MatrixLongT*) : BoolT
  fun matrix_long_size = igraph_matrix_long_size(m : MatrixLongT*) : LibC::Long
  fun matrix_long_nrow = igraph_matrix_long_nrow(m : MatrixLongT*) : LibC::Long
  fun matrix_long_ncol = igraph_matrix_long_ncol(m : MatrixLongT*) : LibC::Long
  fun matrix_long_is_symmetric = igraph_matrix_long_is_symmetric(m : MatrixLongT*) : BoolT
  fun matrix_long_sum = igraph_matrix_long_sum(m : MatrixLongT*) : LibC::Long
  fun matrix_long_prod = igraph_matrix_long_prod(m : MatrixLongT*) : LibC::Long
  fun matrix_long_rowsum = igraph_matrix_long_rowsum(m : MatrixLongT*, res : VectorLongT*) : LibC::Int
  fun matrix_long_colsum = igraph_matrix_long_colsum(m : MatrixLongT*, res : VectorLongT*) : LibC::Int
  fun matrix_long_is_equal = igraph_matrix_long_is_equal(m1 : MatrixLongT*, m2 : MatrixLongT*) : BoolT
  fun matrix_long_maxdifference = igraph_matrix_long_maxdifference(m1 : MatrixLongT*, m2 : MatrixLongT*) : LibC::Long
  fun matrix_long_contains = igraph_matrix_long_contains(m : MatrixLongT*, e : LibC::Long) : BoolT
  fun matrix_long_search = igraph_matrix_long_search(m : MatrixLongT*, from : LibC::Long, what : LibC::Long, pos : LibC::Long*, row : LibC::Long*, col : LibC::Long*) : BoolT
  fun matrix_long_resize = igraph_matrix_long_resize(m : MatrixLongT*, nrow : LibC::Long, ncol : LibC::Long) : LibC::Int
  fun matrix_long_resize_min = igraph_matrix_long_resize_min(m : MatrixLongT*) : LibC::Int
  fun matrix_long_add_cols = igraph_matrix_long_add_cols(m : MatrixLongT*, n : LibC::Long) : LibC::Int
  fun matrix_long_add_rows = igraph_matrix_long_add_rows(m : MatrixLongT*, n : LibC::Long) : LibC::Int
  fun matrix_long_remove_col = igraph_matrix_long_remove_col(m : MatrixLongT*, col : LibC::Long) : LibC::Int
  fun matrix_long_remove_row = igraph_matrix_long_remove_row(m : MatrixLongT*, row : LibC::Long) : LibC::Int
  fun matrix_long_print = igraph_matrix_long_print(m : MatrixLongT*) : LibC::Int
  fun matrix_long_printf = igraph_matrix_long_printf(m : MatrixLongT*, format : LibC::Char*) : LibC::Int
  fun matrix_long_fprint = igraph_matrix_long_fprint(m : MatrixLongT*, file : File*) : LibC::Int
  fun matrix_long_permdelete_rows = igraph_matrix_long_permdelete_rows(m : MatrixLongT*, index : LibC::Long*, nremove : LibC::Long) : LibC::Int
  fun matrix_long_delete_rows_neg = igraph_matrix_long_delete_rows_neg(m : MatrixLongT*, neg : VectorT*, nremove : LibC::Long) : LibC::Int
  struct MatrixCharT
    data : VectorCharT
    nrow : LibC::Long
    ncol : LibC::Long
  end
  fun matrix_char_init = igraph_matrix_char_init(m : MatrixCharT*, nrow : LibC::Long, ncol : LibC::Long) : LibC::Int
  fun matrix_char_copy = igraph_matrix_char_copy(to : MatrixCharT*, from : MatrixCharT*) : LibC::Int
  fun matrix_char_destroy = igraph_matrix_char_destroy(m : MatrixCharT*)
  fun matrix_char_capacity = igraph_matrix_char_capacity(m : MatrixCharT*) : LibC::Long
  fun matrix_char_e = igraph_matrix_char_e(m : MatrixCharT*, row : LibC::Long, col : LibC::Long) : LibC::Char
  fun matrix_char_e_ptr = igraph_matrix_char_e_ptr(m : MatrixCharT*, row : LibC::Long, col : LibC::Long) : LibC::Char*
  fun matrix_char_set = igraph_matrix_char_set(m : MatrixCharT*, row : LibC::Long, col : LibC::Long, value : LibC::Char)
  fun matrix_char_null = igraph_matrix_char_null(m : MatrixCharT*)
  fun matrix_char_fill = igraph_matrix_char_fill(m : MatrixCharT*, e : LibC::Char)
  fun matrix_char_copy_to = igraph_matrix_char_copy_to(m : MatrixCharT*, to : LibC::Char*)
  fun matrix_char_update = igraph_matrix_char_update(to : MatrixCharT*, from : MatrixCharT*) : LibC::Int
  fun matrix_char_rbind = igraph_matrix_char_rbind(to : MatrixCharT*, from : MatrixCharT*) : LibC::Int
  fun matrix_char_cbind = igraph_matrix_char_cbind(to : MatrixCharT*, from : MatrixCharT*) : LibC::Int
  fun matrix_char_swap = igraph_matrix_char_swap(m1 : MatrixCharT*, m2 : MatrixCharT*) : LibC::Int
  fun matrix_char_get_row = igraph_matrix_char_get_row(m : MatrixCharT*, res : VectorCharT*, index : LibC::Long) : LibC::Int
  fun matrix_char_get_col = igraph_matrix_char_get_col(m : MatrixCharT*, res : VectorCharT*, index : LibC::Long) : LibC::Int
  fun matrix_char_set_row = igraph_matrix_char_set_row(m : MatrixCharT*, v : VectorCharT*, index : LibC::Long) : LibC::Int
  fun matrix_char_set_col = igraph_matrix_char_set_col(m : MatrixCharT*, v : VectorCharT*, index : LibC::Long) : LibC::Int
  fun matrix_char_select_rows = igraph_matrix_char_select_rows(m : MatrixCharT*, res : MatrixCharT*, rows : VectorT*) : LibC::Int
  fun matrix_char_select_cols = igraph_matrix_char_select_cols(m : MatrixCharT*, res : MatrixCharT*, cols : VectorT*) : LibC::Int
  fun matrix_char_select_rows_cols = igraph_matrix_char_select_rows_cols(m : MatrixCharT*, res : MatrixCharT*, rows : VectorT*, cols : VectorT*) : LibC::Int
  fun matrix_char_swap_rows = igraph_matrix_char_swap_rows(m : MatrixCharT*, i : LibC::Long, j : LibC::Long) : LibC::Int
  fun matrix_char_swap_cols = igraph_matrix_char_swap_cols(m : MatrixCharT*, i : LibC::Long, j : LibC::Long) : LibC::Int
  fun matrix_char_swap_rowcol = igraph_matrix_char_swap_rowcol(m : MatrixCharT*, i : LibC::Long, j : LibC::Long) : LibC::Int
  fun matrix_char_transpose = igraph_matrix_char_transpose(m : MatrixCharT*) : LibC::Int
  fun matrix_char_add = igraph_matrix_char_add(m1 : MatrixCharT*, m2 : MatrixCharT*) : LibC::Int
  fun matrix_char_sub = igraph_matrix_char_sub(m1 : MatrixCharT*, m2 : MatrixCharT*) : LibC::Int
  fun matrix_char_mul_elements = igraph_matrix_char_mul_elements(m1 : MatrixCharT*, m2 : MatrixCharT*) : LibC::Int
  fun matrix_char_div_elements = igraph_matrix_char_div_elements(m1 : MatrixCharT*, m2 : MatrixCharT*) : LibC::Int
  fun matrix_char_scale = igraph_matrix_char_scale(m : MatrixCharT*, by : LibC::Char)
  fun matrix_char_add_constant = igraph_matrix_char_add_constant(m : MatrixCharT*, plus : LibC::Char)
  fun matrix_char_min = igraph_matrix_char_min(m : MatrixCharT*) : RealT
  fun matrix_char_max = igraph_matrix_char_max(m : MatrixCharT*) : RealT
  fun matrix_char_which_min = igraph_matrix_char_which_min(m : MatrixCharT*, i : LibC::Long*, j : LibC::Long*) : LibC::Int
  fun matrix_char_which_max = igraph_matrix_char_which_max(m : MatrixCharT*, i : LibC::Long*, j : LibC::Long*) : LibC::Int
  fun matrix_char_minmax = igraph_matrix_char_minmax(m : MatrixCharT*, min : LibC::Char*, max : LibC::Char*) : LibC::Int
  fun matrix_char_which_minmax = igraph_matrix_char_which_minmax(m : MatrixCharT*, imin : LibC::Long*, jmin : LibC::Long*, imax : LibC::Long*, jmax : LibC::Long*) : LibC::Int
  fun matrix_char_all_e = igraph_matrix_char_all_e(lhs : MatrixCharT*, rhs : MatrixCharT*) : BoolT
  fun matrix_char_all_l = igraph_matrix_char_all_l(lhs : MatrixCharT*, rhs : MatrixCharT*) : BoolT
  fun matrix_char_all_g = igraph_matrix_char_all_g(lhs : MatrixCharT*, rhs : MatrixCharT*) : BoolT
  fun matrix_char_all_le = igraph_matrix_char_all_le(lhs : MatrixCharT*, rhs : MatrixCharT*) : BoolT
  fun matrix_char_all_ge = igraph_matrix_char_all_ge(lhs : MatrixCharT*, rhs : MatrixCharT*) : BoolT
  fun matrix_char_isnull = igraph_matrix_char_isnull(m : MatrixCharT*) : BoolT
  fun matrix_char_empty = igraph_matrix_char_empty(m : MatrixCharT*) : BoolT
  fun matrix_char_size = igraph_matrix_char_size(m : MatrixCharT*) : LibC::Long
  fun matrix_char_nrow = igraph_matrix_char_nrow(m : MatrixCharT*) : LibC::Long
  fun matrix_char_ncol = igraph_matrix_char_ncol(m : MatrixCharT*) : LibC::Long
  fun matrix_char_is_symmetric = igraph_matrix_char_is_symmetric(m : MatrixCharT*) : BoolT
  fun matrix_char_sum = igraph_matrix_char_sum(m : MatrixCharT*) : LibC::Char
  fun matrix_char_prod = igraph_matrix_char_prod(m : MatrixCharT*) : LibC::Char
  fun matrix_char_rowsum = igraph_matrix_char_rowsum(m : MatrixCharT*, res : VectorCharT*) : LibC::Int
  fun matrix_char_colsum = igraph_matrix_char_colsum(m : MatrixCharT*, res : VectorCharT*) : LibC::Int
  fun matrix_char_is_equal = igraph_matrix_char_is_equal(m1 : MatrixCharT*, m2 : MatrixCharT*) : BoolT
  fun matrix_char_maxdifference = igraph_matrix_char_maxdifference(m1 : MatrixCharT*, m2 : MatrixCharT*) : LibC::Char
  fun matrix_char_contains = igraph_matrix_char_contains(m : MatrixCharT*, e : LibC::Char) : BoolT
  fun matrix_char_search = igraph_matrix_char_search(m : MatrixCharT*, from : LibC::Long, what : LibC::Char, pos : LibC::Long*, row : LibC::Long*, col : LibC::Long*) : BoolT
  fun matrix_char_resize = igraph_matrix_char_resize(m : MatrixCharT*, nrow : LibC::Long, ncol : LibC::Long) : LibC::Int
  fun matrix_char_resize_min = igraph_matrix_char_resize_min(m : MatrixCharT*) : LibC::Int
  fun matrix_char_add_cols = igraph_matrix_char_add_cols(m : MatrixCharT*, n : LibC::Long) : LibC::Int
  fun matrix_char_add_rows = igraph_matrix_char_add_rows(m : MatrixCharT*, n : LibC::Long) : LibC::Int
  fun matrix_char_remove_col = igraph_matrix_char_remove_col(m : MatrixCharT*, col : LibC::Long) : LibC::Int
  fun matrix_char_remove_row = igraph_matrix_char_remove_row(m : MatrixCharT*, row : LibC::Long) : LibC::Int
  fun matrix_char_print = igraph_matrix_char_print(m : MatrixCharT*) : LibC::Int
  fun matrix_char_printf = igraph_matrix_char_printf(m : MatrixCharT*, format : LibC::Char*) : LibC::Int
  fun matrix_char_fprint = igraph_matrix_char_fprint(m : MatrixCharT*, file : File*) : LibC::Int
  fun matrix_char_permdelete_rows = igraph_matrix_char_permdelete_rows(m : MatrixCharT*, index : LibC::Long*, nremove : LibC::Long) : LibC::Int
  fun matrix_char_delete_rows_neg = igraph_matrix_char_delete_rows_neg(m : MatrixCharT*, neg : VectorT*, nremove : LibC::Long) : LibC::Int
  struct MatrixBoolT
    data : VectorBoolT
    nrow : LibC::Long
    ncol : LibC::Long
  end
  fun matrix_bool_init = igraph_matrix_bool_init(m : MatrixBoolT*, nrow : LibC::Long, ncol : LibC::Long) : LibC::Int
  fun matrix_bool_copy = igraph_matrix_bool_copy(to : MatrixBoolT*, from : MatrixBoolT*) : LibC::Int
  fun matrix_bool_destroy = igraph_matrix_bool_destroy(m : MatrixBoolT*)
  fun matrix_bool_capacity = igraph_matrix_bool_capacity(m : MatrixBoolT*) : LibC::Long
  fun matrix_bool_e = igraph_matrix_bool_e(m : MatrixBoolT*, row : LibC::Long, col : LibC::Long) : BoolT
  fun matrix_bool_e_ptr = igraph_matrix_bool_e_ptr(m : MatrixBoolT*, row : LibC::Long, col : LibC::Long) : BoolT*
  fun matrix_bool_set = igraph_matrix_bool_set(m : MatrixBoolT*, row : LibC::Long, col : LibC::Long, value : BoolT)
  fun matrix_bool_null = igraph_matrix_bool_null(m : MatrixBoolT*)
  fun matrix_bool_fill = igraph_matrix_bool_fill(m : MatrixBoolT*, e : BoolT)
  fun matrix_bool_copy_to = igraph_matrix_bool_copy_to(m : MatrixBoolT*, to : BoolT*)
  fun matrix_bool_update = igraph_matrix_bool_update(to : MatrixBoolT*, from : MatrixBoolT*) : LibC::Int
  fun matrix_bool_rbind = igraph_matrix_bool_rbind(to : MatrixBoolT*, from : MatrixBoolT*) : LibC::Int
  fun matrix_bool_cbind = igraph_matrix_bool_cbind(to : MatrixBoolT*, from : MatrixBoolT*) : LibC::Int
  fun matrix_bool_swap = igraph_matrix_bool_swap(m1 : MatrixBoolT*, m2 : MatrixBoolT*) : LibC::Int
  fun matrix_bool_get_row = igraph_matrix_bool_get_row(m : MatrixBoolT*, res : VectorBoolT*, index : LibC::Long) : LibC::Int
  fun matrix_bool_get_col = igraph_matrix_bool_get_col(m : MatrixBoolT*, res : VectorBoolT*, index : LibC::Long) : LibC::Int
  fun matrix_bool_set_row = igraph_matrix_bool_set_row(m : MatrixBoolT*, v : VectorBoolT*, index : LibC::Long) : LibC::Int
  fun matrix_bool_set_col = igraph_matrix_bool_set_col(m : MatrixBoolT*, v : VectorBoolT*, index : LibC::Long) : LibC::Int
  fun matrix_bool_select_rows = igraph_matrix_bool_select_rows(m : MatrixBoolT*, res : MatrixBoolT*, rows : VectorT*) : LibC::Int
  fun matrix_bool_select_cols = igraph_matrix_bool_select_cols(m : MatrixBoolT*, res : MatrixBoolT*, cols : VectorT*) : LibC::Int
  fun matrix_bool_select_rows_cols = igraph_matrix_bool_select_rows_cols(m : MatrixBoolT*, res : MatrixBoolT*, rows : VectorT*, cols : VectorT*) : LibC::Int
  fun matrix_bool_swap_rows = igraph_matrix_bool_swap_rows(m : MatrixBoolT*, i : LibC::Long, j : LibC::Long) : LibC::Int
  fun matrix_bool_swap_cols = igraph_matrix_bool_swap_cols(m : MatrixBoolT*, i : LibC::Long, j : LibC::Long) : LibC::Int
  fun matrix_bool_swap_rowcol = igraph_matrix_bool_swap_rowcol(m : MatrixBoolT*, i : LibC::Long, j : LibC::Long) : LibC::Int
  fun matrix_bool_transpose = igraph_matrix_bool_transpose(m : MatrixBoolT*) : LibC::Int
  fun matrix_bool_add = igraph_matrix_bool_add(m1 : MatrixBoolT*, m2 : MatrixBoolT*) : LibC::Int
  fun matrix_bool_sub = igraph_matrix_bool_sub(m1 : MatrixBoolT*, m2 : MatrixBoolT*) : LibC::Int
  fun matrix_bool_mul_elements = igraph_matrix_bool_mul_elements(m1 : MatrixBoolT*, m2 : MatrixBoolT*) : LibC::Int
  fun matrix_bool_div_elements = igraph_matrix_bool_div_elements(m1 : MatrixBoolT*, m2 : MatrixBoolT*) : LibC::Int
  fun matrix_bool_scale = igraph_matrix_bool_scale(m : MatrixBoolT*, by : BoolT)
  fun matrix_bool_add_constant = igraph_matrix_bool_add_constant(m : MatrixBoolT*, plus : BoolT)
  fun matrix_bool_min = igraph_matrix_bool_min(m : MatrixBoolT*) : RealT
  fun matrix_bool_max = igraph_matrix_bool_max(m : MatrixBoolT*) : RealT
  fun matrix_bool_which_min = igraph_matrix_bool_which_min(m : MatrixBoolT*, i : LibC::Long*, j : LibC::Long*) : LibC::Int
  fun matrix_bool_which_max = igraph_matrix_bool_which_max(m : MatrixBoolT*, i : LibC::Long*, j : LibC::Long*) : LibC::Int
  fun matrix_bool_minmax = igraph_matrix_bool_minmax(m : MatrixBoolT*, min : BoolT*, max : BoolT*) : LibC::Int
  fun matrix_bool_which_minmax = igraph_matrix_bool_which_minmax(m : MatrixBoolT*, imin : LibC::Long*, jmin : LibC::Long*, imax : LibC::Long*, jmax : LibC::Long*) : LibC::Int
  fun matrix_bool_all_e = igraph_matrix_bool_all_e(lhs : MatrixBoolT*, rhs : MatrixBoolT*) : BoolT
  fun matrix_bool_all_l = igraph_matrix_bool_all_l(lhs : MatrixBoolT*, rhs : MatrixBoolT*) : BoolT
  fun matrix_bool_all_g = igraph_matrix_bool_all_g(lhs : MatrixBoolT*, rhs : MatrixBoolT*) : BoolT
  fun matrix_bool_all_le = igraph_matrix_bool_all_le(lhs : MatrixBoolT*, rhs : MatrixBoolT*) : BoolT
  fun matrix_bool_all_ge = igraph_matrix_bool_all_ge(lhs : MatrixBoolT*, rhs : MatrixBoolT*) : BoolT
  fun matrix_bool_isnull = igraph_matrix_bool_isnull(m : MatrixBoolT*) : BoolT
  fun matrix_bool_empty = igraph_matrix_bool_empty(m : MatrixBoolT*) : BoolT
  fun matrix_bool_size = igraph_matrix_bool_size(m : MatrixBoolT*) : LibC::Long
  fun matrix_bool_nrow = igraph_matrix_bool_nrow(m : MatrixBoolT*) : LibC::Long
  fun matrix_bool_ncol = igraph_matrix_bool_ncol(m : MatrixBoolT*) : LibC::Long
  fun matrix_bool_is_symmetric = igraph_matrix_bool_is_symmetric(m : MatrixBoolT*) : BoolT
  fun matrix_bool_sum = igraph_matrix_bool_sum(m : MatrixBoolT*) : BoolT
  fun matrix_bool_prod = igraph_matrix_bool_prod(m : MatrixBoolT*) : BoolT
  fun matrix_bool_rowsum = igraph_matrix_bool_rowsum(m : MatrixBoolT*, res : VectorBoolT*) : LibC::Int
  fun matrix_bool_colsum = igraph_matrix_bool_colsum(m : MatrixBoolT*, res : VectorBoolT*) : LibC::Int
  fun matrix_bool_is_equal = igraph_matrix_bool_is_equal(m1 : MatrixBoolT*, m2 : MatrixBoolT*) : BoolT
  fun matrix_bool_maxdifference = igraph_matrix_bool_maxdifference(m1 : MatrixBoolT*, m2 : MatrixBoolT*) : BoolT
  fun matrix_bool_contains = igraph_matrix_bool_contains(m : MatrixBoolT*, e : BoolT) : BoolT
  fun matrix_bool_search = igraph_matrix_bool_search(m : MatrixBoolT*, from : LibC::Long, what : BoolT, pos : LibC::Long*, row : LibC::Long*, col : LibC::Long*) : BoolT
  fun matrix_bool_resize = igraph_matrix_bool_resize(m : MatrixBoolT*, nrow : LibC::Long, ncol : LibC::Long) : LibC::Int
  fun matrix_bool_resize_min = igraph_matrix_bool_resize_min(m : MatrixBoolT*) : LibC::Int
  fun matrix_bool_add_cols = igraph_matrix_bool_add_cols(m : MatrixBoolT*, n : LibC::Long) : LibC::Int
  fun matrix_bool_add_rows = igraph_matrix_bool_add_rows(m : MatrixBoolT*, n : LibC::Long) : LibC::Int
  fun matrix_bool_remove_col = igraph_matrix_bool_remove_col(m : MatrixBoolT*, col : LibC::Long) : LibC::Int
  fun matrix_bool_remove_row = igraph_matrix_bool_remove_row(m : MatrixBoolT*, row : LibC::Long) : LibC::Int
  fun matrix_bool_print = igraph_matrix_bool_print(m : MatrixBoolT*) : LibC::Int
  fun matrix_bool_printf = igraph_matrix_bool_printf(m : MatrixBoolT*, format : LibC::Char*) : LibC::Int
  fun matrix_bool_fprint = igraph_matrix_bool_fprint(m : MatrixBoolT*, file : File*) : LibC::Int
  fun matrix_bool_permdelete_rows = igraph_matrix_bool_permdelete_rows(m : MatrixBoolT*, index : LibC::Long*, nremove : LibC::Long) : LibC::Int
  fun matrix_bool_delete_rows_neg = igraph_matrix_bool_delete_rows_neg(m : MatrixBoolT*, neg : VectorT*, nremove : LibC::Long) : LibC::Int
  struct MatrixComplexT
    data : VectorComplexT
    nrow : LibC::Long
    ncol : LibC::Long
  end
  fun matrix_complex_init = igraph_matrix_complex_init(m : MatrixComplexT*, nrow : LibC::Long, ncol : LibC::Long) : LibC::Int
  fun matrix_complex_copy = igraph_matrix_complex_copy(to : MatrixComplexT*, from : MatrixComplexT*) : LibC::Int
  fun matrix_complex_destroy = igraph_matrix_complex_destroy(m : MatrixComplexT*)
  fun matrix_complex_capacity = igraph_matrix_complex_capacity(m : MatrixComplexT*) : LibC::Long
  fun matrix_complex_e = igraph_matrix_complex_e(m : MatrixComplexT*, row : LibC::Long, col : LibC::Long) : ComplexT
  fun matrix_complex_e_ptr = igraph_matrix_complex_e_ptr(m : MatrixComplexT*, row : LibC::Long, col : LibC::Long) : ComplexT*
  fun matrix_complex_set = igraph_matrix_complex_set(m : MatrixComplexT*, row : LibC::Long, col : LibC::Long, value : ComplexT)
  fun matrix_complex_null = igraph_matrix_complex_null(m : MatrixComplexT*)
  fun matrix_complex_fill = igraph_matrix_complex_fill(m : MatrixComplexT*, e : ComplexT)
  fun matrix_complex_copy_to = igraph_matrix_complex_copy_to(m : MatrixComplexT*, to : ComplexT*)
  fun matrix_complex_update = igraph_matrix_complex_update(to : MatrixComplexT*, from : MatrixComplexT*) : LibC::Int
  fun matrix_complex_rbind = igraph_matrix_complex_rbind(to : MatrixComplexT*, from : MatrixComplexT*) : LibC::Int
  fun matrix_complex_cbind = igraph_matrix_complex_cbind(to : MatrixComplexT*, from : MatrixComplexT*) : LibC::Int
  fun matrix_complex_swap = igraph_matrix_complex_swap(m1 : MatrixComplexT*, m2 : MatrixComplexT*) : LibC::Int
  fun matrix_complex_get_row = igraph_matrix_complex_get_row(m : MatrixComplexT*, res : VectorComplexT*, index : LibC::Long) : LibC::Int
  fun matrix_complex_get_col = igraph_matrix_complex_get_col(m : MatrixComplexT*, res : VectorComplexT*, index : LibC::Long) : LibC::Int
  fun matrix_complex_set_row = igraph_matrix_complex_set_row(m : MatrixComplexT*, v : VectorComplexT*, index : LibC::Long) : LibC::Int
  fun matrix_complex_set_col = igraph_matrix_complex_set_col(m : MatrixComplexT*, v : VectorComplexT*, index : LibC::Long) : LibC::Int
  fun matrix_complex_select_rows = igraph_matrix_complex_select_rows(m : MatrixComplexT*, res : MatrixComplexT*, rows : VectorT*) : LibC::Int
  fun matrix_complex_select_cols = igraph_matrix_complex_select_cols(m : MatrixComplexT*, res : MatrixComplexT*, cols : VectorT*) : LibC::Int
  fun matrix_complex_select_rows_cols = igraph_matrix_complex_select_rows_cols(m : MatrixComplexT*, res : MatrixComplexT*, rows : VectorT*, cols : VectorT*) : LibC::Int
  fun matrix_complex_swap_rows = igraph_matrix_complex_swap_rows(m : MatrixComplexT*, i : LibC::Long, j : LibC::Long) : LibC::Int
  fun matrix_complex_swap_cols = igraph_matrix_complex_swap_cols(m : MatrixComplexT*, i : LibC::Long, j : LibC::Long) : LibC::Int
  fun matrix_complex_swap_rowcol = igraph_matrix_complex_swap_rowcol(m : MatrixComplexT*, i : LibC::Long, j : LibC::Long) : LibC::Int
  fun matrix_complex_transpose = igraph_matrix_complex_transpose(m : MatrixComplexT*) : LibC::Int
  fun matrix_complex_add = igraph_matrix_complex_add(m1 : MatrixComplexT*, m2 : MatrixComplexT*) : LibC::Int
  fun matrix_complex_sub = igraph_matrix_complex_sub(m1 : MatrixComplexT*, m2 : MatrixComplexT*) : LibC::Int
  fun matrix_complex_mul_elements = igraph_matrix_complex_mul_elements(m1 : MatrixComplexT*, m2 : MatrixComplexT*) : LibC::Int
  fun matrix_complex_div_elements = igraph_matrix_complex_div_elements(m1 : MatrixComplexT*, m2 : MatrixComplexT*) : LibC::Int
  fun matrix_complex_scale = igraph_matrix_complex_scale(m : MatrixComplexT*, by : ComplexT)
  fun matrix_complex_add_constant = igraph_matrix_complex_add_constant(m : MatrixComplexT*, plus : ComplexT)
  fun matrix_complex_min = igraph_matrix_complex_min(m : MatrixComplexT*) : RealT
  fun matrix_complex_max = igraph_matrix_complex_max(m : MatrixComplexT*) : RealT
  fun matrix_complex_which_min = igraph_matrix_complex_which_min(m : MatrixComplexT*, i : LibC::Long*, j : LibC::Long*) : LibC::Int
  fun matrix_complex_which_max = igraph_matrix_complex_which_max(m : MatrixComplexT*, i : LibC::Long*, j : LibC::Long*) : LibC::Int
  fun matrix_complex_minmax = igraph_matrix_complex_minmax(m : MatrixComplexT*, min : ComplexT*, max : ComplexT*) : LibC::Int
  fun matrix_complex_which_minmax = igraph_matrix_complex_which_minmax(m : MatrixComplexT*, imin : LibC::Long*, jmin : LibC::Long*, imax : LibC::Long*, jmax : LibC::Long*) : LibC::Int
  fun matrix_complex_all_e = igraph_matrix_complex_all_e(lhs : MatrixComplexT*, rhs : MatrixComplexT*) : BoolT
  fun matrix_complex_all_l = igraph_matrix_complex_all_l(lhs : MatrixComplexT*, rhs : MatrixComplexT*) : BoolT
  fun matrix_complex_all_g = igraph_matrix_complex_all_g(lhs : MatrixComplexT*, rhs : MatrixComplexT*) : BoolT
  fun matrix_complex_all_le = igraph_matrix_complex_all_le(lhs : MatrixComplexT*, rhs : MatrixComplexT*) : BoolT
  fun matrix_complex_all_ge = igraph_matrix_complex_all_ge(lhs : MatrixComplexT*, rhs : MatrixComplexT*) : BoolT
  fun matrix_complex_isnull = igraph_matrix_complex_isnull(m : MatrixComplexT*) : BoolT
  fun matrix_complex_empty = igraph_matrix_complex_empty(m : MatrixComplexT*) : BoolT
  fun matrix_complex_size = igraph_matrix_complex_size(m : MatrixComplexT*) : LibC::Long
  fun matrix_complex_nrow = igraph_matrix_complex_nrow(m : MatrixComplexT*) : LibC::Long
  fun matrix_complex_ncol = igraph_matrix_complex_ncol(m : MatrixComplexT*) : LibC::Long
  fun matrix_complex_is_symmetric = igraph_matrix_complex_is_symmetric(m : MatrixComplexT*) : BoolT
  fun matrix_complex_sum = igraph_matrix_complex_sum(m : MatrixComplexT*) : ComplexT
  fun matrix_complex_prod = igraph_matrix_complex_prod(m : MatrixComplexT*) : ComplexT
  fun matrix_complex_rowsum = igraph_matrix_complex_rowsum(m : MatrixComplexT*, res : VectorComplexT*) : LibC::Int
  fun matrix_complex_colsum = igraph_matrix_complex_colsum(m : MatrixComplexT*, res : VectorComplexT*) : LibC::Int
  fun matrix_complex_is_equal = igraph_matrix_complex_is_equal(m1 : MatrixComplexT*, m2 : MatrixComplexT*) : BoolT
  fun matrix_complex_maxdifference = igraph_matrix_complex_maxdifference(m1 : MatrixComplexT*, m2 : MatrixComplexT*) : ComplexT
  fun matrix_complex_contains = igraph_matrix_complex_contains(m : MatrixComplexT*, e : ComplexT) : BoolT
  fun matrix_complex_search = igraph_matrix_complex_search(m : MatrixComplexT*, from : LibC::Long, what : ComplexT, pos : LibC::Long*, row : LibC::Long*, col : LibC::Long*) : BoolT
  fun matrix_complex_resize = igraph_matrix_complex_resize(m : MatrixComplexT*, nrow : LibC::Long, ncol : LibC::Long) : LibC::Int
  fun matrix_complex_resize_min = igraph_matrix_complex_resize_min(m : MatrixComplexT*) : LibC::Int
  fun matrix_complex_add_cols = igraph_matrix_complex_add_cols(m : MatrixComplexT*, n : LibC::Long) : LibC::Int
  fun matrix_complex_add_rows = igraph_matrix_complex_add_rows(m : MatrixComplexT*, n : LibC::Long) : LibC::Int
  fun matrix_complex_remove_col = igraph_matrix_complex_remove_col(m : MatrixComplexT*, col : LibC::Long) : LibC::Int
  fun matrix_complex_remove_row = igraph_matrix_complex_remove_row(m : MatrixComplexT*, row : LibC::Long) : LibC::Int
  fun matrix_complex_print = igraph_matrix_complex_print(m : MatrixComplexT*) : LibC::Int
  fun matrix_complex_printf = igraph_matrix_complex_printf(m : MatrixComplexT*, format : LibC::Char*) : LibC::Int
  fun matrix_complex_fprint = igraph_matrix_complex_fprint(m : MatrixComplexT*, file : File*) : LibC::Int
  fun matrix_complex_real = igraph_matrix_complex_real(v : MatrixComplexT*, real : MatrixT*) : LibC::Int
  fun matrix_complex_imag = igraph_matrix_complex_imag(v : MatrixComplexT*, imag : MatrixT*) : LibC::Int
  fun matrix_complex_realimag = igraph_matrix_complex_realimag(v : MatrixComplexT*, real : MatrixT*, imag : MatrixT*) : LibC::Int
  fun matrix_complex_create = igraph_matrix_complex_create(v : MatrixComplexT*, real : MatrixT*, imag : MatrixT*) : LibC::Int
  fun matrix_complex_create_polar = igraph_matrix_complex_create_polar(v : MatrixComplexT*, r : MatrixT*, theta : MatrixT*) : LibC::Int
  fun matrix_complex_permdelete_rows = igraph_matrix_complex_permdelete_rows(m : MatrixComplexT*, index : LibC::Long*, nremove : LibC::Long) : LibC::Int
  fun matrix_complex_delete_rows_neg = igraph_matrix_complex_delete_rows_neg(m : MatrixComplexT*, neg : VectorT*, nremove : LibC::Long) : LibC::Int
  fun matrix_all_e_tol = igraph_matrix_all_e_tol(lhs : MatrixT*, rhs : MatrixT*, tol : RealT) : BoolT
  struct Array3T
    data : VectorT
    n1 : LibC::Long
    n2 : LibC::Long
    n3 : LibC::Long
    n1n2 : LibC::Long
  end
  fun array3_init = igraph_array3_init(a : Array3T*, n1 : LibC::Long, n2 : LibC::Long, n3 : LibC::Long) : LibC::Int
  fun array3_destroy = igraph_array3_destroy(a : Array3T*)
  fun array3_size = igraph_array3_size(a : Array3T*) : LibC::Long
  fun array3_n = igraph_array3_n(a : Array3T*, idx : LibC::Long) : LibC::Long
  fun array3_resize = igraph_array3_resize(a : Array3T*, n1 : LibC::Long, n2 : LibC::Long, n3 : LibC::Long) : LibC::Int
  fun array3_null = igraph_array3_null(a : Array3T*)
  fun array3_sum = igraph_array3_sum(a : Array3T*) : RealT
  fun array3_scale = igraph_array3_scale(a : Array3T*, by : RealT)
  fun array3_fill = igraph_array3_fill(a : Array3T*, e : RealT)
  fun array3_update = igraph_array3_update(to : Array3T*, from : Array3T*) : LibC::Int
  struct Array3LongT
    data : VectorLongT
    n1 : LibC::Long
    n2 : LibC::Long
    n3 : LibC::Long
    n1n2 : LibC::Long
  end
  fun array3_long_init = igraph_array3_long_init(a : Array3LongT*, n1 : LibC::Long, n2 : LibC::Long, n3 : LibC::Long) : LibC::Int
  fun array3_long_destroy = igraph_array3_long_destroy(a : Array3LongT*)
  fun array3_long_size = igraph_array3_long_size(a : Array3LongT*) : LibC::Long
  fun array3_long_n = igraph_array3_long_n(a : Array3LongT*, idx : LibC::Long) : LibC::Long
  fun array3_long_resize = igraph_array3_long_resize(a : Array3LongT*, n1 : LibC::Long, n2 : LibC::Long, n3 : LibC::Long) : LibC::Int
  fun array3_long_null = igraph_array3_long_null(a : Array3LongT*)
  fun array3_long_sum = igraph_array3_long_sum(a : Array3LongT*) : LibC::Long
  fun array3_long_scale = igraph_array3_long_scale(a : Array3LongT*, by : LibC::Long)
  fun array3_long_fill = igraph_array3_long_fill(a : Array3LongT*, e : LibC::Long)
  fun array3_long_update = igraph_array3_long_update(to : Array3LongT*, from : Array3LongT*) : LibC::Int
  struct Array3CharT
    data : VectorCharT
    n1 : LibC::Long
    n2 : LibC::Long
    n3 : LibC::Long
    n1n2 : LibC::Long
  end
  fun array3_char_init = igraph_array3_char_init(a : Array3CharT*, n1 : LibC::Long, n2 : LibC::Long, n3 : LibC::Long) : LibC::Int
  fun array3_char_destroy = igraph_array3_char_destroy(a : Array3CharT*)
  fun array3_char_size = igraph_array3_char_size(a : Array3CharT*) : LibC::Long
  fun array3_char_n = igraph_array3_char_n(a : Array3CharT*, idx : LibC::Long) : LibC::Long
  fun array3_char_resize = igraph_array3_char_resize(a : Array3CharT*, n1 : LibC::Long, n2 : LibC::Long, n3 : LibC::Long) : LibC::Int
  fun array3_char_null = igraph_array3_char_null(a : Array3CharT*)
  fun array3_char_sum = igraph_array3_char_sum(a : Array3CharT*) : LibC::Char
  fun array3_char_scale = igraph_array3_char_scale(a : Array3CharT*, by : LibC::Char)
  fun array3_char_fill = igraph_array3_char_fill(a : Array3CharT*, e : LibC::Char)
  fun array3_char_update = igraph_array3_char_update(to : Array3CharT*, from : Array3CharT*) : LibC::Int
  struct Array3BoolT
    data : VectorBoolT
    n1 : LibC::Long
    n2 : LibC::Long
    n3 : LibC::Long
    n1n2 : LibC::Long
  end
  fun array3_bool_init = igraph_array3_bool_init(a : Array3BoolT*, n1 : LibC::Long, n2 : LibC::Long, n3 : LibC::Long) : LibC::Int
  fun array3_bool_destroy = igraph_array3_bool_destroy(a : Array3BoolT*)
  fun array3_bool_size = igraph_array3_bool_size(a : Array3BoolT*) : LibC::Long
  fun array3_bool_n = igraph_array3_bool_n(a : Array3BoolT*, idx : LibC::Long) : LibC::Long
  fun array3_bool_resize = igraph_array3_bool_resize(a : Array3BoolT*, n1 : LibC::Long, n2 : LibC::Long, n3 : LibC::Long) : LibC::Int
  fun array3_bool_null = igraph_array3_bool_null(a : Array3BoolT*)
  fun array3_bool_sum = igraph_array3_bool_sum(a : Array3BoolT*) : BoolT
  fun array3_bool_scale = igraph_array3_bool_scale(a : Array3BoolT*, by : BoolT)
  fun array3_bool_fill = igraph_array3_bool_fill(a : Array3BoolT*, e : BoolT)
  fun array3_bool_update = igraph_array3_bool_update(to : Array3BoolT*, from : Array3BoolT*) : LibC::Int
  struct DqueueT
    begin : RealT*
    _end : RealT*
    stor_begin : RealT*
    stor_end : RealT*
  end
  fun dqueue_init = igraph_dqueue_init(q : DqueueT*, size : LibC::Long) : LibC::Int
  fun dqueue_destroy = igraph_dqueue_destroy(q : DqueueT*)
  fun dqueue_empty = igraph_dqueue_empty(q : DqueueT*) : BoolT
  fun dqueue_clear = igraph_dqueue_clear(q : DqueueT*)
  fun dqueue_full = igraph_dqueue_full(q : DqueueT*) : BoolT
  fun dqueue_size = igraph_dqueue_size(q : DqueueT*) : LibC::Long
  fun dqueue_pop = igraph_dqueue_pop(q : DqueueT*) : RealT
  fun dqueue_pop_back = igraph_dqueue_pop_back(q : DqueueT*) : RealT
  fun dqueue_head = igraph_dqueue_head(q : DqueueT*) : RealT
  fun dqueue_back = igraph_dqueue_back(q : DqueueT*) : RealT
  fun dqueue_push = igraph_dqueue_push(q : DqueueT*, elem : RealT) : LibC::Int
  fun dqueue_print = igraph_dqueue_print(q : DqueueT*) : LibC::Int
  fun dqueue_fprint = igraph_dqueue_fprint(q : DqueueT*, file : File*) : LibC::Int
  fun dqueue_e = igraph_dqueue_e(q : DqueueT*, idx : LibC::Long) : RealT
  struct DqueueLongT
    begin : LibC::Long*
    _end : LibC::Long*
    stor_begin : LibC::Long*
    stor_end : LibC::Long*
  end
  fun dqueue_long_init = igraph_dqueue_long_init(q : DqueueLongT*, size : LibC::Long) : LibC::Int
  fun dqueue_long_destroy = igraph_dqueue_long_destroy(q : DqueueLongT*)
  fun dqueue_long_empty = igraph_dqueue_long_empty(q : DqueueLongT*) : BoolT
  fun dqueue_long_clear = igraph_dqueue_long_clear(q : DqueueLongT*)
  fun dqueue_long_full = igraph_dqueue_long_full(q : DqueueLongT*) : BoolT
  fun dqueue_long_size = igraph_dqueue_long_size(q : DqueueLongT*) : LibC::Long
  fun dqueue_long_pop = igraph_dqueue_long_pop(q : DqueueLongT*) : LibC::Long
  fun dqueue_long_pop_back = igraph_dqueue_long_pop_back(q : DqueueLongT*) : LibC::Long
  fun dqueue_long_head = igraph_dqueue_long_head(q : DqueueLongT*) : LibC::Long
  fun dqueue_long_back = igraph_dqueue_long_back(q : DqueueLongT*) : LibC::Long
  fun dqueue_long_push = igraph_dqueue_long_push(q : DqueueLongT*, elem : LibC::Long) : LibC::Int
  fun dqueue_long_print = igraph_dqueue_long_print(q : DqueueLongT*) : LibC::Int
  fun dqueue_long_fprint = igraph_dqueue_long_fprint(q : DqueueLongT*, file : File*) : LibC::Int
  fun dqueue_long_e = igraph_dqueue_long_e(q : DqueueLongT*, idx : LibC::Long) : LibC::Long
  struct DqueueCharT
    begin : LibC::Char*
    _end : LibC::Char*
    stor_begin : LibC::Char*
    stor_end : LibC::Char*
  end
  fun dqueue_char_init = igraph_dqueue_char_init(q : DqueueCharT*, size : LibC::Long) : LibC::Int
  fun dqueue_char_destroy = igraph_dqueue_char_destroy(q : DqueueCharT*)
  fun dqueue_char_empty = igraph_dqueue_char_empty(q : DqueueCharT*) : BoolT
  fun dqueue_char_clear = igraph_dqueue_char_clear(q : DqueueCharT*)
  fun dqueue_char_full = igraph_dqueue_char_full(q : DqueueCharT*) : BoolT
  fun dqueue_char_size = igraph_dqueue_char_size(q : DqueueCharT*) : LibC::Long
  fun dqueue_char_pop = igraph_dqueue_char_pop(q : DqueueCharT*) : LibC::Char
  fun dqueue_char_pop_back = igraph_dqueue_char_pop_back(q : DqueueCharT*) : LibC::Char
  fun dqueue_char_head = igraph_dqueue_char_head(q : DqueueCharT*) : LibC::Char
  fun dqueue_char_back = igraph_dqueue_char_back(q : DqueueCharT*) : LibC::Char
  fun dqueue_char_push = igraph_dqueue_char_push(q : DqueueCharT*, elem : LibC::Char) : LibC::Int
  fun dqueue_char_print = igraph_dqueue_char_print(q : DqueueCharT*) : LibC::Int
  fun dqueue_char_fprint = igraph_dqueue_char_fprint(q : DqueueCharT*, file : File*) : LibC::Int
  fun dqueue_char_e = igraph_dqueue_char_e(q : DqueueCharT*, idx : LibC::Long) : LibC::Char
  struct DqueueBoolT
    begin : BoolT*
    _end : BoolT*
    stor_begin : BoolT*
    stor_end : BoolT*
  end
  fun dqueue_bool_init = igraph_dqueue_bool_init(q : DqueueBoolT*, size : LibC::Long) : LibC::Int
  fun dqueue_bool_destroy = igraph_dqueue_bool_destroy(q : DqueueBoolT*)
  fun dqueue_bool_empty = igraph_dqueue_bool_empty(q : DqueueBoolT*) : BoolT
  fun dqueue_bool_clear = igraph_dqueue_bool_clear(q : DqueueBoolT*)
  fun dqueue_bool_full = igraph_dqueue_bool_full(q : DqueueBoolT*) : BoolT
  fun dqueue_bool_size = igraph_dqueue_bool_size(q : DqueueBoolT*) : LibC::Long
  fun dqueue_bool_pop = igraph_dqueue_bool_pop(q : DqueueBoolT*) : BoolT
  fun dqueue_bool_pop_back = igraph_dqueue_bool_pop_back(q : DqueueBoolT*) : BoolT
  fun dqueue_bool_head = igraph_dqueue_bool_head(q : DqueueBoolT*) : BoolT
  fun dqueue_bool_back = igraph_dqueue_bool_back(q : DqueueBoolT*) : BoolT
  fun dqueue_bool_push = igraph_dqueue_bool_push(q : DqueueBoolT*, elem : BoolT) : LibC::Int
  fun dqueue_bool_print = igraph_dqueue_bool_print(q : DqueueBoolT*) : LibC::Int
  fun dqueue_bool_fprint = igraph_dqueue_bool_fprint(q : DqueueBoolT*, file : File*) : LibC::Int
  fun dqueue_bool_e = igraph_dqueue_bool_e(q : DqueueBoolT*, idx : LibC::Long) : BoolT
  struct StackT
    stor_begin : RealT*
    stor_end : RealT*
    _end : RealT*
  end
  fun stack_init = igraph_stack_init(s : StackT*, size : LibC::Long) : LibC::Int
  fun stack_destroy = igraph_stack_destroy(s : StackT*)
  fun stack_reserve = igraph_stack_reserve(s : StackT*, size : LibC::Long) : LibC::Int
  fun stack_empty = igraph_stack_empty(s : StackT*) : BoolT
  fun stack_size = igraph_stack_size(s : StackT*) : LibC::Long
  fun stack_clear = igraph_stack_clear(s : StackT*)
  fun stack_push = igraph_stack_push(s : StackT*, elem : RealT) : LibC::Int
  fun stack_pop = igraph_stack_pop(s : StackT*) : RealT
  fun stack_top = igraph_stack_top(s : StackT*) : RealT
  fun stack_print = igraph_stack_print(s : StackT*) : LibC::Int
  fun stack_fprint = igraph_stack_fprint(s : StackT*, file : File*) : LibC::Int
  struct StackLongT
    stor_begin : LibC::Long*
    stor_end : LibC::Long*
    _end : LibC::Long*
  end
  fun stack_long_init = igraph_stack_long_init(s : StackLongT*, size : LibC::Long) : LibC::Int
  fun stack_long_destroy = igraph_stack_long_destroy(s : StackLongT*)
  fun stack_long_reserve = igraph_stack_long_reserve(s : StackLongT*, size : LibC::Long) : LibC::Int
  fun stack_long_empty = igraph_stack_long_empty(s : StackLongT*) : BoolT
  fun stack_long_size = igraph_stack_long_size(s : StackLongT*) : LibC::Long
  fun stack_long_clear = igraph_stack_long_clear(s : StackLongT*)
  fun stack_long_push = igraph_stack_long_push(s : StackLongT*, elem : LibC::Long) : LibC::Int
  fun stack_long_pop = igraph_stack_long_pop(s : StackLongT*) : LibC::Long
  fun stack_long_top = igraph_stack_long_top(s : StackLongT*) : LibC::Long
  fun stack_long_print = igraph_stack_long_print(s : StackLongT*) : LibC::Int
  fun stack_long_fprint = igraph_stack_long_fprint(s : StackLongT*, file : File*) : LibC::Int
  struct StackCharT
    stor_begin : LibC::Char*
    stor_end : LibC::Char*
    _end : LibC::Char*
  end
  fun stack_char_init = igraph_stack_char_init(s : StackCharT*, size : LibC::Long) : LibC::Int
  fun stack_char_destroy = igraph_stack_char_destroy(s : StackCharT*)
  fun stack_char_reserve = igraph_stack_char_reserve(s : StackCharT*, size : LibC::Long) : LibC::Int
  fun stack_char_empty = igraph_stack_char_empty(s : StackCharT*) : BoolT
  fun stack_char_size = igraph_stack_char_size(s : StackCharT*) : LibC::Long
  fun stack_char_clear = igraph_stack_char_clear(s : StackCharT*)
  fun stack_char_push = igraph_stack_char_push(s : StackCharT*, elem : LibC::Char) : LibC::Int
  fun stack_char_pop = igraph_stack_char_pop(s : StackCharT*) : LibC::Char
  fun stack_char_top = igraph_stack_char_top(s : StackCharT*) : LibC::Char
  fun stack_char_print = igraph_stack_char_print(s : StackCharT*) : LibC::Int
  fun stack_char_fprint = igraph_stack_char_fprint(s : StackCharT*, file : File*) : LibC::Int
  struct StackBoolT
    stor_begin : BoolT*
    stor_end : BoolT*
    _end : BoolT*
  end
  fun stack_bool_init = igraph_stack_bool_init(s : StackBoolT*, size : LibC::Long) : LibC::Int
  fun stack_bool_destroy = igraph_stack_bool_destroy(s : StackBoolT*)
  fun stack_bool_reserve = igraph_stack_bool_reserve(s : StackBoolT*, size : LibC::Long) : LibC::Int
  fun stack_bool_empty = igraph_stack_bool_empty(s : StackBoolT*) : BoolT
  fun stack_bool_size = igraph_stack_bool_size(s : StackBoolT*) : LibC::Long
  fun stack_bool_clear = igraph_stack_bool_clear(s : StackBoolT*)
  fun stack_bool_push = igraph_stack_bool_push(s : StackBoolT*, elem : BoolT) : LibC::Int
  fun stack_bool_pop = igraph_stack_bool_pop(s : StackBoolT*) : BoolT
  fun stack_bool_top = igraph_stack_bool_top(s : StackBoolT*) : BoolT
  fun stack_bool_print = igraph_stack_bool_print(s : StackBoolT*) : LibC::Int
  fun stack_bool_fprint = igraph_stack_bool_fprint(s : StackBoolT*, file : File*) : LibC::Int
  struct StackPtrT
    stor_begin : Void**
    stor_end : Void**
    _end : Void**
  end
  fun stack_ptr_init = igraph_stack_ptr_init(s : StackPtrT*, size : LibC::Long) : LibC::Int
  fun stack_ptr_destroy = igraph_stack_ptr_destroy(s : StackPtrT*)
  fun stack_ptr_reserve = igraph_stack_ptr_reserve(s : StackPtrT*, size : LibC::Long) : LibC::Int
  fun stack_ptr_empty = igraph_stack_ptr_empty(s : StackPtrT*) : BoolT
  fun stack_ptr_size = igraph_stack_ptr_size(s : StackPtrT*) : LibC::Long
  fun stack_ptr_clear = igraph_stack_ptr_clear(s : StackPtrT*)
  fun stack_ptr_push = igraph_stack_ptr_push(s : StackPtrT*, elem : Void*) : LibC::Int
  fun stack_ptr_pop = igraph_stack_ptr_pop(s : StackPtrT*) : Void*
  fun stack_ptr_top = igraph_stack_ptr_top(s : StackPtrT*) : Void*
  fun stack_ptr_print = igraph_stack_ptr_print(s : StackPtrT*) : LibC::Int
  fun stack_ptr_fprint = igraph_stack_ptr_fprint(s : StackPtrT*, file : File*) : LibC::Int
  fun stack_ptr_free_all = igraph_stack_ptr_free_all(s : StackPtrT*)
  fun stack_ptr_destroy_all = igraph_stack_ptr_destroy_all(s : StackPtrT*)
  struct HeapT
    stor_begin : RealT*
    stor_end : RealT*
    _end : RealT*
    destroy : LibC::Int
  end
  fun heap_init = igraph_heap_init(h : HeapT*, size : LibC::Long) : LibC::Int
  fun heap_init_array = igraph_heap_init_array(t : HeapT*, data : RealT*, len : LibC::Long) : LibC::Int
  fun heap_destroy = igraph_heap_destroy(h : HeapT*)
  fun heap_empty = igraph_heap_empty(h : HeapT*) : BoolT
  fun heap_push = igraph_heap_push(h : HeapT*, elem : RealT) : LibC::Int
  fun heap_top = igraph_heap_top(h : HeapT*) : RealT
  fun heap_delete_top = igraph_heap_delete_top(h : HeapT*) : RealT
  fun heap_size = igraph_heap_size(h : HeapT*) : LibC::Long
  fun heap_reserve = igraph_heap_reserve(h : HeapT*, size : LibC::Long) : LibC::Int
  fun heap_i_build = igraph_heap_i_build(arr : RealT*, size : LibC::Long, head : LibC::Long)
  fun heap_i_shift_up = igraph_heap_i_shift_up(arr : RealT*, size : LibC::Long, elem : LibC::Long)
  fun heap_i_sink = igraph_heap_i_sink(arr : RealT*, size : LibC::Long, head : LibC::Long)
  fun heap_i_switch = igraph_heap_i_switch(arr : RealT*, e1 : LibC::Long, e2 : LibC::Long)
  struct HeapMinT
    stor_begin : RealT*
    stor_end : RealT*
    _end : RealT*
    destroy : LibC::Int
  end
  fun heap_min_init = igraph_heap_min_init(h : HeapMinT*, size : LibC::Long) : LibC::Int
  fun heap_min_init_array = igraph_heap_min_init_array(t : HeapMinT*, data : RealT*, len : LibC::Long) : LibC::Int
  fun heap_min_destroy = igraph_heap_min_destroy(h : HeapMinT*)
  fun heap_min_empty = igraph_heap_min_empty(h : HeapMinT*) : BoolT
  fun heap_min_push = igraph_heap_min_push(h : HeapMinT*, elem : RealT) : LibC::Int
  fun heap_min_top = igraph_heap_min_top(h : HeapMinT*) : RealT
  fun heap_min_delete_top = igraph_heap_min_delete_top(h : HeapMinT*) : RealT
  fun heap_min_size = igraph_heap_min_size(h : HeapMinT*) : LibC::Long
  fun heap_min_reserve = igraph_heap_min_reserve(h : HeapMinT*, size : LibC::Long) : LibC::Int
  fun heap_min_i_build = igraph_heap_min_i_build(arr : RealT*, size : LibC::Long, head : LibC::Long)
  fun heap_min_i_shift_up = igraph_heap_min_i_shift_up(arr : RealT*, size : LibC::Long, elem : LibC::Long)
  fun heap_min_i_sink = igraph_heap_min_i_sink(arr : RealT*, size : LibC::Long, head : LibC::Long)
  fun heap_min_i_switch = igraph_heap_min_i_switch(arr : RealT*, e1 : LibC::Long, e2 : LibC::Long)
  struct HeapLongT
    stor_begin : LibC::Long*
    stor_end : LibC::Long*
    _end : LibC::Long*
    destroy : LibC::Int
  end
  fun heap_long_init = igraph_heap_long_init(h : HeapLongT*, size : LibC::Long) : LibC::Int
  fun heap_long_init_array = igraph_heap_long_init_array(t : HeapLongT*, data : LibC::Long*, len : LibC::Long) : LibC::Int
  fun heap_long_destroy = igraph_heap_long_destroy(h : HeapLongT*)
  fun heap_long_empty = igraph_heap_long_empty(h : HeapLongT*) : BoolT
  fun heap_long_push = igraph_heap_long_push(h : HeapLongT*, elem : LibC::Long) : LibC::Int
  fun heap_long_top = igraph_heap_long_top(h : HeapLongT*) : LibC::Long
  fun heap_long_delete_top = igraph_heap_long_delete_top(h : HeapLongT*) : LibC::Long
  fun heap_long_size = igraph_heap_long_size(h : HeapLongT*) : LibC::Long
  fun heap_long_reserve = igraph_heap_long_reserve(h : HeapLongT*, size : LibC::Long) : LibC::Int
  fun heap_long_i_build = igraph_heap_long_i_build(arr : LibC::Long*, size : LibC::Long, head : LibC::Long)
  fun heap_long_i_shift_up = igraph_heap_long_i_shift_up(arr : LibC::Long*, size : LibC::Long, elem : LibC::Long)
  fun heap_long_i_sink = igraph_heap_long_i_sink(arr : LibC::Long*, size : LibC::Long, head : LibC::Long)
  fun heap_long_i_switch = igraph_heap_long_i_switch(arr : LibC::Long*, e1 : LibC::Long, e2 : LibC::Long)
  struct HeapMinLongT
    stor_begin : LibC::Long*
    stor_end : LibC::Long*
    _end : LibC::Long*
    destroy : LibC::Int
  end
  fun heap_min_long_init = igraph_heap_min_long_init(h : HeapMinLongT*, size : LibC::Long) : LibC::Int
  fun heap_min_long_init_array = igraph_heap_min_long_init_array(t : HeapMinLongT*, data : LibC::Long*, len : LibC::Long) : LibC::Int
  fun heap_min_long_destroy = igraph_heap_min_long_destroy(h : HeapMinLongT*)
  fun heap_min_long_empty = igraph_heap_min_long_empty(h : HeapMinLongT*) : BoolT
  fun heap_min_long_push = igraph_heap_min_long_push(h : HeapMinLongT*, elem : LibC::Long) : LibC::Int
  fun heap_min_long_top = igraph_heap_min_long_top(h : HeapMinLongT*) : LibC::Long
  fun heap_min_long_delete_top = igraph_heap_min_long_delete_top(h : HeapMinLongT*) : LibC::Long
  fun heap_min_long_size = igraph_heap_min_long_size(h : HeapMinLongT*) : LibC::Long
  fun heap_min_long_reserve = igraph_heap_min_long_reserve(h : HeapMinLongT*, size : LibC::Long) : LibC::Int
  fun heap_min_long_i_build = igraph_heap_min_long_i_build(arr : LibC::Long*, size : LibC::Long, head : LibC::Long)
  fun heap_min_long_i_shift_up = igraph_heap_min_long_i_shift_up(arr : LibC::Long*, size : LibC::Long, elem : LibC::Long)
  fun heap_min_long_i_sink = igraph_heap_min_long_i_sink(arr : LibC::Long*, size : LibC::Long, head : LibC::Long)
  fun heap_min_long_i_switch = igraph_heap_min_long_i_switch(arr : LibC::Long*, e1 : LibC::Long, e2 : LibC::Long)
  struct HeapCharT
    stor_begin : LibC::Char*
    stor_end : LibC::Char*
    _end : LibC::Char*
    destroy : LibC::Int
  end
  fun heap_char_init = igraph_heap_char_init(h : HeapCharT*, size : LibC::Long) : LibC::Int
  fun heap_char_init_array = igraph_heap_char_init_array(t : HeapCharT*, data : LibC::Char*, len : LibC::Long) : LibC::Int
  fun heap_char_destroy = igraph_heap_char_destroy(h : HeapCharT*)
  fun heap_char_empty = igraph_heap_char_empty(h : HeapCharT*) : BoolT
  fun heap_char_push = igraph_heap_char_push(h : HeapCharT*, elem : LibC::Char) : LibC::Int
  fun heap_char_top = igraph_heap_char_top(h : HeapCharT*) : LibC::Char
  fun heap_char_delete_top = igraph_heap_char_delete_top(h : HeapCharT*) : LibC::Char
  fun heap_char_size = igraph_heap_char_size(h : HeapCharT*) : LibC::Long
  fun heap_char_reserve = igraph_heap_char_reserve(h : HeapCharT*, size : LibC::Long) : LibC::Int
  fun heap_char_i_build = igraph_heap_char_i_build(arr : LibC::Char*, size : LibC::Long, head : LibC::Long)
  fun heap_char_i_shift_up = igraph_heap_char_i_shift_up(arr : LibC::Char*, size : LibC::Long, elem : LibC::Long)
  fun heap_char_i_sink = igraph_heap_char_i_sink(arr : LibC::Char*, size : LibC::Long, head : LibC::Long)
  fun heap_char_i_switch = igraph_heap_char_i_switch(arr : LibC::Char*, e1 : LibC::Long, e2 : LibC::Long)
  struct HeapMinCharT
    stor_begin : LibC::Char*
    stor_end : LibC::Char*
    _end : LibC::Char*
    destroy : LibC::Int
  end
  fun heap_min_char_init = igraph_heap_min_char_init(h : HeapMinCharT*, size : LibC::Long) : LibC::Int
  fun heap_min_char_init_array = igraph_heap_min_char_init_array(t : HeapMinCharT*, data : LibC::Char*, len : LibC::Long) : LibC::Int
  fun heap_min_char_destroy = igraph_heap_min_char_destroy(h : HeapMinCharT*)
  fun heap_min_char_empty = igraph_heap_min_char_empty(h : HeapMinCharT*) : BoolT
  fun heap_min_char_push = igraph_heap_min_char_push(h : HeapMinCharT*, elem : LibC::Char) : LibC::Int
  fun heap_min_char_top = igraph_heap_min_char_top(h : HeapMinCharT*) : LibC::Char
  fun heap_min_char_delete_top = igraph_heap_min_char_delete_top(h : HeapMinCharT*) : LibC::Char
  fun heap_min_char_size = igraph_heap_min_char_size(h : HeapMinCharT*) : LibC::Long
  fun heap_min_char_reserve = igraph_heap_min_char_reserve(h : HeapMinCharT*, size : LibC::Long) : LibC::Int
  fun heap_min_char_i_build = igraph_heap_min_char_i_build(arr : LibC::Char*, size : LibC::Long, head : LibC::Long)
  fun heap_min_char_i_shift_up = igraph_heap_min_char_i_shift_up(arr : LibC::Char*, size : LibC::Long, elem : LibC::Long)
  fun heap_min_char_i_sink = igraph_heap_min_char_i_sink(arr : LibC::Char*, size : LibC::Long, head : LibC::Long)
  fun heap_min_char_i_switch = igraph_heap_min_char_i_switch(arr : LibC::Char*, e1 : LibC::Long, e2 : LibC::Long)
  fun psumtree_init = igraph_psumtree_init(t : PsumtreeT*, size : LibC::Long) : LibC::Int
  struct PsumtreeT
    v : VectorT
    size : LibC::Long
    offset : LibC::Long
  end
  fun psumtree_destroy = igraph_psumtree_destroy(t : PsumtreeT*)
  fun psumtree_get = igraph_psumtree_get(t : PsumtreeT*, idx : LibC::Long) : RealT
  fun psumtree_size = igraph_psumtree_size(t : PsumtreeT*) : LibC::Long
  fun psumtree_search = igraph_psumtree_search(t : PsumtreeT*, idx : LibC::Long*, elem : RealT) : LibC::Int
  fun psumtree_update = igraph_psumtree_update(t : PsumtreeT*, idx : LibC::Long, new_value : RealT) : LibC::Int
  fun psumtree_sum = igraph_psumtree_sum(t : PsumtreeT*) : RealT
  fun strvector_init = igraph_strvector_init(sv : StrvectorT*, len : LibC::Long) : LibC::Int
  struct SIgraphStrvector
    data : LibC::Char**
    len : LibC::Long
  end
  type StrvectorT = SIgraphStrvector
  fun strvector_destroy = igraph_strvector_destroy(sv : StrvectorT*)
  fun strvector_size = igraph_strvector_size(sv : StrvectorT*) : LibC::Long
  fun strvector_get = igraph_strvector_get(sv : StrvectorT*, idx : LibC::Long, value : LibC::Char**)
  fun strvector_set = igraph_strvector_set(sv : StrvectorT*, idx : LibC::Long, value : LibC::Char*) : LibC::Int
  fun strvector_set2 = igraph_strvector_set2(sv : StrvectorT*, idx : LibC::Long, value : LibC::Char*, len : LibC::Int) : LibC::Int
  fun strvector_clear = igraph_strvector_clear(sv : StrvectorT*)
  fun strvector_remove_section = igraph_strvector_remove_section(v : StrvectorT*, from : LibC::Long, to : LibC::Long)
  fun strvector_remove = igraph_strvector_remove(v : StrvectorT*, elem : LibC::Long)
  fun strvector_move_interval = igraph_strvector_move_interval(v : StrvectorT*, begin : LibC::Long, _end : LibC::Long, to : LibC::Long)
  fun strvector_copy = igraph_strvector_copy(to : StrvectorT*, from : StrvectorT*) : LibC::Int
  fun strvector_append = igraph_strvector_append(to : StrvectorT*, from : StrvectorT*) : LibC::Int
  fun strvector_resize = igraph_strvector_resize(v : StrvectorT*, newsize : LibC::Long) : LibC::Int
  fun strvector_add = igraph_strvector_add(v : StrvectorT*, value : LibC::Char*) : LibC::Int
  fun strvector_permdelete = igraph_strvector_permdelete(v : StrvectorT*, index : VectorT*, nremove : LibC::Long)
  fun strvector_remove_negidx = igraph_strvector_remove_negidx(v : StrvectorT*, neg : VectorT*, nremove : LibC::Long)
  fun strvector_print = igraph_strvector_print(v : StrvectorT*, file : File*, sep : LibC::Char*) : LibC::Int
  fun strvector_index = igraph_strvector_index(v : StrvectorT*, newv : StrvectorT*, idx : VectorT*) : LibC::Int
  fun vector_ptr_init = igraph_vector_ptr_init(v : VectorPtrT*, size : LibC::Long) : LibC::Int
  struct SVectorPtr
    stor_begin : Void**
    stor_end : Void**
    _end : Void**
    item_destructor : Void* -> Void
  end
  type VectorPtrT = SVectorPtr
  fun vector_ptr_init_copy = igraph_vector_ptr_init_copy(v : VectorPtrT*, data : Void**, length : LibC::Long) : LibC::Int
  fun vector_ptr_view = igraph_vector_ptr_view(v : VectorPtrT*, data : Void**, length : LibC::Long) : VectorPtrT*
  fun vector_ptr_destroy = igraph_vector_ptr_destroy(v : VectorPtrT*)
  fun vector_ptr_free_all = igraph_vector_ptr_free_all(v : VectorPtrT*)
  fun vector_ptr_destroy_all = igraph_vector_ptr_destroy_all(v : VectorPtrT*)
  fun vector_ptr_reserve = igraph_vector_ptr_reserve(v : VectorPtrT*, size : LibC::Long) : LibC::Int
  fun vector_ptr_empty = igraph_vector_ptr_empty(v : VectorPtrT*) : BoolT
  fun vector_ptr_size = igraph_vector_ptr_size(v : VectorPtrT*) : LibC::Long
  fun vector_ptr_clear = igraph_vector_ptr_clear(v : VectorPtrT*)
  fun vector_ptr_null = igraph_vector_ptr_null(v : VectorPtrT*)
  fun vector_ptr_push_back = igraph_vector_ptr_push_back(v : VectorPtrT*, e : Void*) : LibC::Int
  fun vector_ptr_append = igraph_vector_ptr_append(to : VectorPtrT*, from : VectorPtrT*) : LibC::Int
  fun vector_ptr_pop_back = igraph_vector_ptr_pop_back(v : VectorPtrT*) : Void*
  fun vector_ptr_insert = igraph_vector_ptr_insert(v : VectorPtrT*, pos : LibC::Long, e : Void*) : LibC::Int
  fun vector_ptr_e = igraph_vector_ptr_e(v : VectorPtrT*, pos : LibC::Long) : Void*
  fun vector_ptr_set = igraph_vector_ptr_set(v : VectorPtrT*, pos : LibC::Long, value : Void*)
  fun vector_ptr_resize = igraph_vector_ptr_resize(v : VectorPtrT*, newsize : LibC::Long) : LibC::Int
  fun vector_ptr_copy_to = igraph_vector_ptr_copy_to(v : VectorPtrT*, to : Void**)
  fun vector_ptr_copy = igraph_vector_ptr_copy(to : VectorPtrT*, from : VectorPtrT*) : LibC::Int
  fun vector_ptr_remove = igraph_vector_ptr_remove(v : VectorPtrT*, pos : LibC::Long)
  fun vector_ptr_sort = igraph_vector_ptr_sort(v : VectorPtrT*, compar : Void*, Void* -> LibC::Int)
  fun vector_ptr_index_int = igraph_vector_ptr_index_int(v : VectorPtrT*, idx : VectorIntT*) : LibC::Int
  fun vector_ptr_get_item_destructor = igraph_vector_ptr_get_item_destructor(v : VectorPtrT*) : Void* -> Void
  fun vector_ptr_set_item_destructor = igraph_vector_ptr_set_item_destructor(v : VectorPtrT*, func : Void* -> Void) : Void* -> Void
  fun spmatrix_init = igraph_spmatrix_init(m : SpmatrixT*, nrow : LibC::Long, ncol : LibC::Long) : LibC::Int
  struct SSpmatrix
    ridx : VectorT
    cidx : VectorT
    data : VectorT
    nrow : LibC::Long
    ncol : LibC::Long
  end
  type SpmatrixT = SSpmatrix
  fun spmatrix_destroy = igraph_spmatrix_destroy(m : SpmatrixT*)
  fun spmatrix_resize = igraph_spmatrix_resize(m : SpmatrixT*, nrow : LibC::Long, ncol : LibC::Long) : LibC::Int
  fun spmatrix_e = igraph_spmatrix_e(m : SpmatrixT*, row : LibC::Long, col : LibC::Long) : RealT
  fun spmatrix_set = igraph_spmatrix_set(m : SpmatrixT*, row : LibC::Long, col : LibC::Long, value : RealT) : LibC::Int
  fun spmatrix_add_e = igraph_spmatrix_add_e(m : SpmatrixT*, row : LibC::Long, col : LibC::Long, value : RealT) : LibC::Int
  fun spmatrix_add_col_values = igraph_spmatrix_add_col_values(m : SpmatrixT*, to : LibC::Long, from : LibC::Long) : LibC::Int
  fun spmatrix_count_nonzero = igraph_spmatrix_count_nonzero(m : SpmatrixT*) : LibC::Long
  fun spmatrix_size = igraph_spmatrix_size(m : SpmatrixT*) : LibC::Long
  fun spmatrix_nrow = igraph_spmatrix_nrow(m : SpmatrixT*) : LibC::Long
  fun spmatrix_ncol = igraph_spmatrix_ncol(m : SpmatrixT*) : LibC::Long
  fun spmatrix_copy_to = igraph_spmatrix_copy_to(m : SpmatrixT*, to : RealT*) : LibC::Int
  fun spmatrix_null = igraph_spmatrix_null(m : SpmatrixT*) : LibC::Int
  fun spmatrix_add_cols = igraph_spmatrix_add_cols(m : SpmatrixT*, n : LibC::Long) : LibC::Int
  fun spmatrix_add_rows = igraph_spmatrix_add_rows(m : SpmatrixT*, n : LibC::Long) : LibC::Int
  fun spmatrix_clear_col = igraph_spmatrix_clear_col(m : SpmatrixT*, col : LibC::Long) : LibC::Int
  fun spmatrix_clear_row = igraph_spmatrix_clear_row(m : SpmatrixT*, row : LibC::Long) : LibC::Int
  fun spmatrix_copy = igraph_spmatrix_copy(to : SpmatrixT*, from : SpmatrixT*) : LibC::Int
  fun spmatrix_max_nonzero = igraph_spmatrix_max_nonzero(m : SpmatrixT*, ridx : RealT*, cidx : RealT*) : RealT
  fun spmatrix_max = igraph_spmatrix_max(m : SpmatrixT*, ridx : RealT*, cidx : RealT*) : RealT
  fun spmatrix_scale = igraph_spmatrix_scale(m : SpmatrixT*, by : RealT)
  fun spmatrix_colsums = igraph_spmatrix_colsums(m : SpmatrixT*, res : VectorT*) : LibC::Int
  fun spmatrix_rowsums = igraph_spmatrix_rowsums(m : SpmatrixT*, res : VectorT*) : LibC::Int
  fun spmatrix_print = igraph_spmatrix_print(matrix : SpmatrixT*) : LibC::Int
  fun spmatrix_fprint = igraph_spmatrix_fprint(matrix : SpmatrixT*, file : File*) : LibC::Int
  fun i_spmatrix_get_col_nonzero_indices = igraph_i_spmatrix_get_col_nonzero_indices(m : SpmatrixT*, res : VectorT*, col : LibC::Long) : LibC::Int
  fun i_spmatrix_clear_row_fast = igraph_i_spmatrix_clear_row_fast(m : SpmatrixT*, row : LibC::Long) : LibC::Int
  fun i_spmatrix_cleanup = igraph_i_spmatrix_cleanup(m : SpmatrixT*) : LibC::Int
  fun spmatrix_iter_create = igraph_spmatrix_iter_create(mit : SpmatrixIterT*, m : SpmatrixT*) : LibC::Int
  struct SSpmatrixIter
    m : SpmatrixT*
    pos : LibC::Long
    ri : LibC::Long
    ci : LibC::Long
    value : RealT
  end
  type SpmatrixIterT = SSpmatrixIter
  fun spmatrix_iter_reset = igraph_spmatrix_iter_reset(mit : SpmatrixIterT*) : LibC::Int
  fun spmatrix_iter_next = igraph_spmatrix_iter_next(mit : SpmatrixIterT*) : LibC::Int
  fun spmatrix_iter_end = igraph_spmatrix_iter_end(mit : SpmatrixIterT*) : BoolT
  fun spmatrix_iter_destroy = igraph_spmatrix_iter_destroy(mit : SpmatrixIterT*)
  struct S
    n : IntegerT
    directed : BoolT
    from : VectorT
    to : VectorT
    oi : VectorT
    ii : VectorT
    os : VectorT
    is : VectorT
    attr : Void*
  end
  alias IntegerT = LibC::Int
  struct ArpackOptionsT
    bmat : LibC::Char[1]
    n : LibC::Int
    which : LibC::Char[2]
    nev : LibC::Int
    tol : RealT
    ncv : LibC::Int
    ldv : LibC::Int
    ishift : LibC::Int
    mxiter : LibC::Int
    nb : LibC::Int
    mode : LibC::Int
    start : LibC::Int
    lworkl : LibC::Int
    sigma : RealT
    sigmai : RealT
    info : LibC::Int
    ierr : LibC::Int
    noiter : LibC::Int
    nconv : LibC::Int
    numop : LibC::Int
    numopb : LibC::Int
    numreo : LibC::Int
    iparam : LibC::Int[11]
    ipntr : LibC::Int[14]
  end
  struct ArpackStorageT
    maxn : LibC::Int
    maxncv : LibC::Int
    maxldv : LibC::Int
    v : RealT*
    workl : RealT*
    workd : RealT*
    d : RealT*
    resid : RealT*
    ax : RealT*
    select : LibC::Int*
    di : RealT*
    workev : RealT*
  end
  fun arpack_options_init = igraph_arpack_options_init(o : ArpackOptionsT*)
  fun arpack_storage_init = igraph_arpack_storage_init(s : ArpackStorageT*, maxn : LibC::Long, maxncv : LibC::Long, maxldv : LibC::Long, symm : BoolT) : LibC::Int
  fun arpack_storage_destroy = igraph_arpack_storage_destroy(s : ArpackStorageT*)
  fun arpack_rssolve = igraph_arpack_rssolve(fun : RealT*, RealT*, LibC::Int, Void* -> LibC::Int, extra : Void*, options : ArpackOptionsT*, storage : ArpackStorageT*, values : VectorT*, vectors : MatrixT*) : LibC::Int
  fun arpack_rnsolve = igraph_arpack_rnsolve(fun : RealT*, RealT*, LibC::Int, Void* -> LibC::Int, extra : Void*, options : ArpackOptionsT*, storage : ArpackStorageT*, values : MatrixT*, vectors : MatrixT*) : LibC::Int
  fun arpack_unpack_complex = igraph_arpack_unpack_complex(vectors : MatrixT*, values : MatrixT*, nev : LibC::Long) : LibC::Int
  SparsematTriplet = 0
  SparsematCc = 1
  fun sparsemat_init = igraph_sparsemat_init(a : SparsematT*, rows : LibC::Int, cols : LibC::Int, nzmax : LibC::Int) : LibC::Int
  struct SparsematT
    cs : CsDiSparse*
  end
  alias CsDiSparse = Void
  fun sparsemat_copy = igraph_sparsemat_copy(to : SparsematT*, from : SparsematT*) : LibC::Int
  fun sparsemat_destroy = igraph_sparsemat_destroy(a : SparsematT*)
  fun sparsemat_realloc = igraph_sparsemat_realloc(a : SparsematT*, nzmax : LibC::Int) : LibC::Int
  fun sparsemat_nrow = igraph_sparsemat_nrow(a : SparsematT*) : LibC::Long
  fun sparsemat_ncol = igraph_sparsemat_ncol(b : SparsematT*) : LibC::Long
  fun sparsemat_type = igraph_sparsemat_type(a : SparsematT*) : SparsematTypeT
  enum SparsematTypeT
    SparsematTriplet = 0
    SparsematCc = 1
  end
  fun sparsemat_is_triplet = igraph_sparsemat_is_triplet(a : SparsematT*) : BoolT
  fun sparsemat_is_cc = igraph_sparsemat_is_cc(a : SparsematT*) : BoolT
  fun sparsemat_permute = igraph_sparsemat_permute(a : SparsematT*, p : VectorIntT*, q : VectorIntT*, res : SparsematT*) : LibC::Int
  fun sparsemat_index = igraph_sparsemat_index(a : SparsematT*, p : VectorIntT*, q : VectorIntT*, res : SparsematT*, constres : RealT*) : LibC::Int
  fun sparsemat_entry = igraph_sparsemat_entry(a : SparsematT*, row : LibC::Int, col : LibC::Int, elem : RealT) : LibC::Int
  fun sparsemat_compress = igraph_sparsemat_compress(a : SparsematT*, res : SparsematT*) : LibC::Int
  fun sparsemat_transpose = igraph_sparsemat_transpose(a : SparsematT*, res : SparsematT*, values : LibC::Int) : LibC::Int
  fun sparsemat_is_symmetric = igraph_sparsemat_is_symmetric(a : SparsematT*) : BoolT
  fun sparsemat_dupl = igraph_sparsemat_dupl(a : SparsematT*) : LibC::Int
  fun sparsemat_fkeep = igraph_sparsemat_fkeep(a : SparsematT*, fkeep : LibC::Int, LibC::Int, RealT, Void* -> LibC::Int, other : Void*) : LibC::Int
  fun sparsemat_dropzeros = igraph_sparsemat_dropzeros(a : SparsematT*) : LibC::Int
  fun sparsemat_droptol = igraph_sparsemat_droptol(a : SparsematT*, tol : RealT) : LibC::Int
  fun sparsemat_multiply = igraph_sparsemat_multiply(a : SparsematT*, b : SparsematT*, res : SparsematT*) : LibC::Int
  fun sparsemat_add = igraph_sparsemat_add(a : SparsematT*, b : SparsematT*, alpha : RealT, beta : RealT, res : SparsematT*) : LibC::Int
  fun sparsemat_gaxpy = igraph_sparsemat_gaxpy(a : SparsematT*, x : VectorT*, res : VectorT*) : LibC::Int
  fun sparsemat_lsolve = igraph_sparsemat_lsolve(a : SparsematT*, b : VectorT*, res : VectorT*) : LibC::Int
  fun sparsemat_ltsolve = igraph_sparsemat_ltsolve(a : SparsematT*, b : VectorT*, res : VectorT*) : LibC::Int
  fun sparsemat_usolve = igraph_sparsemat_usolve(a : SparsematT*, b : VectorT*, res : VectorT*) : LibC::Int
  fun sparsemat_utsolve = igraph_sparsemat_utsolve(a : SparsematT*, b : VectorT*, res : VectorT*) : LibC::Int
  fun sparsemat_cholsol = igraph_sparsemat_cholsol(a : SparsematT*, b : VectorT*, res : VectorT*, order : LibC::Int) : LibC::Int
  fun sparsemat_lusol = igraph_sparsemat_lusol(a : SparsematT*, b : VectorT*, res : VectorT*, order : LibC::Int, tol : RealT) : LibC::Int
  fun sparsemat_print = igraph_sparsemat_print(a : SparsematT*, outstream : File*) : LibC::Int
  fun sparsemat_eye = igraph_sparsemat_eye(a : SparsematT*, n : LibC::Int, nzmax : LibC::Int, value : RealT, compress : BoolT) : LibC::Int
  fun sparsemat_diag = igraph_sparsemat_diag(a : SparsematT*, nzmax : LibC::Int, values : VectorT*, compress : BoolT) : LibC::Int
  fun sparsemat = igraph_sparsemat(graph : T*, a : SparsematT*, directed : BoolT) : LibC::Int
  type T = S
  fun weighted_sparsemat = igraph_weighted_sparsemat(graph : T*, a : SparsematT*, directed : BoolT, attr : LibC::Char*, loops : BoolT) : LibC::Int
  fun get_sparsemat = igraph_get_sparsemat(graph : T*, res : SparsematT*) : LibC::Int
  fun matrix_as_sparsemat = igraph_matrix_as_sparsemat(res : SparsematT*, mat : MatrixT*, tol : RealT) : LibC::Int
  fun sparsemat_as_matrix = igraph_sparsemat_as_matrix(res : MatrixT*, spmat : SparsematT*) : LibC::Int
  SparsematSolveLu = 0
  SparsematSolveQr = 1
  fun sparsemat_arpack_rssolve = igraph_sparsemat_arpack_rssolve(a : SparsematT*, options : ArpackOptionsT*, storage : ArpackStorageT*, values : VectorT*, vectors : MatrixT*, solvemethod : SparsematSolveT) : LibC::Int
  enum SparsematSolveT
    SparsematSolveLu = 0
    SparsematSolveQr = 1
  end
  fun sparsemat_arpack_rnsolve = igraph_sparsemat_arpack_rnsolve(a : SparsematT*, options : ArpackOptionsT*, storage : ArpackStorageT*, values : MatrixT*, vectors : MatrixT*) : LibC::Int
  fun sparsemat_lu = igraph_sparsemat_lu(a : SparsematT*, dis : SparsematSymbolicT*, din : SparsematNumericT*, tol : LibC::Double) : LibC::Int
  struct SparsematSymbolicT
    symbolic : CsDiSymbolic*
  end
  alias CsDiSymbolic = Void
  struct SparsematNumericT
    numeric : CsDiNumeric*
  end
  alias CsDiNumeric = Void
  fun sparsemat_qr = igraph_sparsemat_qr(a : SparsematT*, dis : SparsematSymbolicT*, din : SparsematNumericT*) : LibC::Int
  fun sparsemat_luresol = igraph_sparsemat_luresol(dis : SparsematSymbolicT*, din : SparsematNumericT*, b : VectorT*, res : VectorT*) : LibC::Int
  fun sparsemat_qrresol = igraph_sparsemat_qrresol(dis : SparsematSymbolicT*, din : SparsematNumericT*, b : VectorT*, res : VectorT*) : LibC::Int
  fun sparsemat_symbqr = igraph_sparsemat_symbqr(order : LibC::Long, a : SparsematT*, dis : SparsematSymbolicT*) : LibC::Int
  fun sparsemat_symblu = igraph_sparsemat_symblu(order : LibC::Long, a : SparsematT*, dis : SparsematSymbolicT*) : LibC::Int
  fun sparsemat_symbolic_destroy = igraph_sparsemat_symbolic_destroy(dis : SparsematSymbolicT*)
  fun sparsemat_numeric_destroy = igraph_sparsemat_numeric_destroy(din : SparsematNumericT*)
  fun sparsemat_max = igraph_sparsemat_max(a : SparsematT*) : RealT
  fun sparsemat_min = igraph_sparsemat_min(a : SparsematT*) : RealT
  fun sparsemat_minmax = igraph_sparsemat_minmax(a : SparsematT*, min : RealT*, max : RealT*) : LibC::Int
  fun sparsemat_count_nonzero = igraph_sparsemat_count_nonzero(a : SparsematT*) : LibC::Long
  fun sparsemat_count_nonzerotol = igraph_sparsemat_count_nonzerotol(a : SparsematT*, tol : RealT) : LibC::Long
  fun sparsemat_rowsums = igraph_sparsemat_rowsums(a : SparsematT*, res : VectorT*) : LibC::Int
  fun sparsemat_colsums = igraph_sparsemat_colsums(a : SparsematT*, res : VectorT*) : LibC::Int
  fun sparsemat_scale = igraph_sparsemat_scale(a : SparsematT*, by : RealT) : LibC::Int
  fun sparsemat_add_rows = igraph_sparsemat_add_rows(a : SparsematT*, n : LibC::Long) : LibC::Int
  fun sparsemat_add_cols = igraph_sparsemat_add_cols(a : SparsematT*, n : LibC::Long) : LibC::Int
  fun sparsemat_resize = igraph_sparsemat_resize(a : SparsematT*, nrow : LibC::Long, ncol : LibC::Long, nzmax : LibC::Int) : LibC::Int
  fun sparsemat_nonzero_storage = igraph_sparsemat_nonzero_storage(a : SparsematT*) : LibC::Int
  fun sparsemat_getelements = igraph_sparsemat_getelements(a : SparsematT*, i : VectorIntT*, j : VectorIntT*, x : VectorT*) : LibC::Int
  fun sparsemat_getelements_sorted = igraph_sparsemat_getelements_sorted(a : SparsematT*, i : VectorIntT*, j : VectorIntT*, x : VectorT*) : LibC::Int
  fun sparsemat_scale_rows = igraph_sparsemat_scale_rows(a : SparsematT*, fact : VectorT*) : LibC::Int
  fun sparsemat_scale_cols = igraph_sparsemat_scale_cols(a : SparsematT*, fact : VectorT*) : LibC::Int
  fun sparsemat_multiply_by_dense = igraph_sparsemat_multiply_by_dense(a : SparsematT*, b : MatrixT*, res : MatrixT*) : LibC::Int
  fun sparsemat_dense_multiply = igraph_sparsemat_dense_multiply(a : MatrixT*, b : SparsematT*, res : MatrixT*) : LibC::Int
  fun i_sparsemat_view = igraph_i_sparsemat_view(a : SparsematT*, nzmax : LibC::Int, m : LibC::Int, n : LibC::Int, p : LibC::Int*, i : LibC::Int*, x : LibC::Double*, nz : LibC::Int) : LibC::Int
  fun sparsemat_sort = igraph_sparsemat_sort(a : SparsematT*, sorted : SparsematT*) : LibC::Int
  fun sparsemat_nzmax = igraph_sparsemat_nzmax(a : SparsematT*) : LibC::Int
  fun sparsemat_neg = igraph_sparsemat_neg(a : SparsematT*) : LibC::Int
  fun sparsemat_iterator_init = igraph_sparsemat_iterator_init(it : SparsematIteratorT*, sparsemat : SparsematT*) : LibC::Int
  struct SparsematIteratorT
    mat : SparsematT*
    pos : LibC::Int
    col : LibC::Int
  end
  fun sparsemat_iterator_reset = igraph_sparsemat_iterator_reset(it : SparsematIteratorT*) : LibC::Int
  fun sparsemat_iterator_end = igraph_sparsemat_iterator_end(it : SparsematIteratorT*) : BoolT
  fun sparsemat_iterator_row = igraph_sparsemat_iterator_row(it : SparsematIteratorT*) : LibC::Int
  fun sparsemat_iterator_col = igraph_sparsemat_iterator_col(it : SparsematIteratorT*) : LibC::Int
  fun sparsemat_iterator_idx = igraph_sparsemat_iterator_idx(it : SparsematIteratorT*) : LibC::Int
  fun sparsemat_iterator_get = igraph_sparsemat_iterator_get(it : SparsematIteratorT*) : RealT
  fun sparsemat_iterator_next = igraph_sparsemat_iterator_next(it : SparsematIteratorT*) : LibC::Int
  fun qsort = igraph_qsort(base : Void*, nel : LibC::SizeT, width : LibC::SizeT, compar : Void*, Void* -> LibC::Int)
  fun qsort_r = igraph_qsort_r(base : Void*, nel : LibC::SizeT, width : LibC::SizeT, thunk : Void*, compar : Void*, Void*, Void* -> LibC::Int)
  Undirected = 0
  Directed = 1
  NoLoops = 0
  Loops = 1
  NoMultiple = 0
  Multiple = 1
  Ascending = 0
  Descending = 1
  Minimum = 0
  Maximum = 1
  Out = 1
  In = 2
  All = 3
  Total = 3
  Weak = 1
  Strong = 2
  ReciprocityDefault = 0
  ReciprocityRatio = 1
  AdjDirected = 0
  AdjUndirected = 1
  AdjMax = 1
  AdjUpper = 2
  AdjLower = 3
  AdjMin = 4
  AdjPlus = 5
  StarOut = 0
  StarIn = 1
  StarUndirected = 2
  StarMutual = 3
  TreeOut = 0
  TreeIn = 1
  TreeUndirected = 2
  ErdosRenyiGnp = 0
  ErdosRenyiGnm = 1
  GetAdjacencyUpper = 0
  GetAdjacencyLower = 1
  GetAdjacencyBoth = 2
  DegseqSimple = 0
  DegseqVl = 1
  DegseqSimpleNoMultiple = 2
  FileformatEdgelist = 0
  FileformatNcol = 1
  FileformatPajek = 2
  FileformatLgl = 3
  FileformatGraphml = 4
  RewiringSimple = 0
  RewiringSimpleLoops = 1
  EdgeorderId = 0
  EdgeorderFrom = 1
  EdgeorderTo = 2
  ToDirectedArbitrary = 0
  ToDirectedMutual = 1
  ToUndirectedEach = 0
  ToUndirectedCollapse = 1
  ToUndirectedMutual = 2
  VconnNeiError = 0
  VconnNeiNumberOfNodes = 1
  VconnNeiIgnore = 2
  VconnNeiNegative = 3
  SpincommUpdateSimple = 0
  SpincommUpdateConfig = 1
  DontSimplify = 0
  Simplify = 1
  TransitivityNan = 0
  TransitivityZero = 1
  SpincommImpOrig = 0
  SpincommImpNeg = 1
  CommcmpVi = 0
  CommcmpNmi = 1
  CommcmpSplitJoin = 2
  CommcmpRand = 3
  CommcmpAdjustedRand = 4
  AddWeightsNo = 0
  AddWeightsYes = 1
  AddWeightsIfPresent = 2
  BarabasiBag = 0
  BarabasiPsumtree = 1
  BarabasiPsumtreeMultiple = 2
  FasExactIp = 0
  FasApproxEades = 1
  SubgraphAuto = 0
  SubgraphCopyAndDelete = 1
  SubgraphCreateFromScratch = 2
  ImitateAugmented = 0
  ImitateBlind = 1
  ImitateContracted = 2
  struct VsT
    type : LibC::Int
    data : VsTData
  end
  union VsTData
    vid : IntegerT
    vecptr : VectorT*
    adj : VsTDataAdj
    seq : VsTDataSeq
  end
  struct VsTDataAdj
    vid : IntegerT
    mode : NeimodeT
  end
  enum NeimodeT
    Out = 1
    In = 2
    All = 3
    Total = 3
  end
  struct VsTDataSeq
    from : IntegerT
    to : IntegerT
  end
  fun vs_all = igraph_vs_all(vs : VsT*) : LibC::Int
  fun vss_all = igraph_vss_all : VsT
  fun vs_adj = igraph_vs_adj(vs : VsT*, vid : IntegerT, mode : NeimodeT) : LibC::Int
  fun vss_adj = igraph_vss_adj(vid : IntegerT, mode : NeimodeT) : VsT
  fun vs_nonadj = igraph_vs_nonadj(vs : VsT*, vid : IntegerT, mode : NeimodeT) : LibC::Int
  fun vs_none = igraph_vs_none(vs : VsT*) : LibC::Int
  fun vss_none = igraph_vss_none : VsT
  fun vs_1 = igraph_vs_1(vs : VsT*, vid : IntegerT) : LibC::Int
  fun vss_1 = igraph_vss_1(vid : IntegerT) : VsT
  fun vs_vector = igraph_vs_vector(vs : VsT*, v : VectorT*) : LibC::Int
  fun vss_vector = igraph_vss_vector(v : VectorT*) : VsT
  fun vs_vector_small = igraph_vs_vector_small(vs : VsT*, ...) : LibC::Int
  fun vs_vector_copy = igraph_vs_vector_copy(vs : VsT*, v : VectorT*) : LibC::Int
  fun vs_seq = igraph_vs_seq(vs : VsT*, from : IntegerT, to : IntegerT) : LibC::Int
  fun vss_seq = igraph_vss_seq(from : IntegerT, to : IntegerT) : VsT
  fun vs_destroy = igraph_vs_destroy(vs : VsT*)
  fun vs_is_all = igraph_vs_is_all(vs : VsT*) : BoolT
  fun vs_copy = igraph_vs_copy(dest : VsT*, src : VsT*) : LibC::Int
  fun vs_as_vector = igraph_vs_as_vector(graph : T*, vs : VsT, v : VectorT*) : LibC::Int
  fun vs_size = igraph_vs_size(graph : T*, vs : VsT*, result : IntegerT*) : LibC::Int
  fun vs_type = igraph_vs_type(vs : VsT*) : LibC::Int
  struct VitT
    type : LibC::Int
    pos : LibC::Long
    start : LibC::Long
    _end : LibC::Long
    vec : VectorT*
  end
  fun vit_create = igraph_vit_create(graph : T*, vs : VsT, vit : VitT*) : LibC::Int
  fun vit_destroy = igraph_vit_destroy(vit : VitT*)
  fun vit_as_vector = igraph_vit_as_vector(vit : VitT*, v : VectorT*) : LibC::Int
  struct EsT
    type : LibC::Int
    data : EsTData
  end
  union EsTData
    vid : IntegerT
    eid : IntegerT
    vecptr : VectorT*
    incident : EsTDataIncident
    seq : EsTDataSeq
    path : EsTDataPath
  end
  struct EsTDataIncident
    vid : IntegerT
    mode : NeimodeT
  end
  struct EsTDataSeq
    from : IntegerT
    to : IntegerT
  end
  struct EsTDataPath
    ptr : VectorT*
    mode : BoolT
  end
  fun es_all = igraph_es_all(es : EsT*, order : EdgeorderTypeT) : LibC::Int
  enum EdgeorderTypeT
    EdgeorderId = 0
    EdgeorderFrom = 1
    EdgeorderTo = 2
  end
  fun ess_all = igraph_ess_all(order : EdgeorderTypeT) : EsT
  fun es_adj = igraph_es_adj(es : EsT*, vid : IntegerT, mode : NeimodeT) : LibC::Int
  fun es_incident = igraph_es_incident(es : EsT*, vid : IntegerT, mode : NeimodeT) : LibC::Int
  fun es_none = igraph_es_none(es : EsT*) : LibC::Int
  fun ess_none = igraph_ess_none : EsT
  fun es_1 = igraph_es_1(es : EsT*, eid : IntegerT) : LibC::Int
  fun ess_1 = igraph_ess_1(eid : IntegerT) : EsT
  fun es_vector = igraph_es_vector(es : EsT*, v : VectorT*) : LibC::Int
  fun ess_vector = igraph_ess_vector(v : VectorT*) : EsT
  fun es_fromto = igraph_es_fromto(es : EsT*, from : VsT, to : VsT) : LibC::Int
  fun es_seq = igraph_es_seq(es : EsT*, from : IntegerT, to : IntegerT) : LibC::Int
  fun ess_seq = igraph_ess_seq(from : IntegerT, to : IntegerT) : EsT
  fun es_vector_copy = igraph_es_vector_copy(es : EsT*, v : VectorT*) : LibC::Int
  fun es_pairs = igraph_es_pairs(es : EsT*, v : VectorT*, directed : BoolT) : LibC::Int
  fun es_pairs_small = igraph_es_pairs_small(es : EsT*, directed : BoolT, ...) : LibC::Int
  fun es_multipairs = igraph_es_multipairs(es : EsT*, v : VectorT*, directed : BoolT) : LibC::Int
  fun es_path = igraph_es_path(es : EsT*, v : VectorT*, directed : BoolT) : LibC::Int
  fun es_path_small = igraph_es_path_small(es : EsT*, directed : BoolT, ...) : LibC::Int
  fun es_destroy = igraph_es_destroy(es : EsT*)
  fun es_is_all = igraph_es_is_all(es : EsT*) : BoolT
  fun es_copy = igraph_es_copy(dest : EsT*, src : EsT*) : LibC::Int
  fun es_as_vector = igraph_es_as_vector(graph : T*, es : EsT, v : VectorT*) : LibC::Int
  fun es_size = igraph_es_size(graph : T*, es : EsT*, result : IntegerT*) : LibC::Int
  fun es_type = igraph_es_type(es : EsT*) : LibC::Int
  struct EitT
    type : LibC::Int
    pos : LibC::Long
    start : LibC::Long
    _end : LibC::Long
    vec : VectorT*
  end
  fun eit_create = igraph_eit_create(graph : T*, es : EsT, eit : EitT*) : LibC::Int
  fun eit_destroy = igraph_eit_destroy(eit : EitT*)
  fun eit_as_vector = igraph_eit_as_vector(eit : EitT*, v : VectorT*) : LibC::Int
  fun empty = igraph_empty(graph : T*, n : IntegerT, directed : BoolT) : LibC::Int
  fun empty_attrs = igraph_empty_attrs(graph : T*, n : IntegerT, directed : BoolT, attr : Void*) : LibC::Int
  fun destroy = igraph_destroy(graph : T*) : LibC::Int
  fun copy = igraph_copy(to : T*, from : T*) : LibC::Int
  fun add_edges = igraph_add_edges(graph : T*, edges : VectorT*, attr : Void*) : LibC::Int
  fun add_vertices = igraph_add_vertices(graph : T*, nv : IntegerT, attr : Void*) : LibC::Int
  fun delete_edges = igraph_delete_edges(graph : T*, edges : EsT) : LibC::Int
  fun delete_vertices = igraph_delete_vertices(graph : T*, vertices : VsT) : LibC::Int
  fun delete_vertices_idx = igraph_delete_vertices_idx(graph : T*, vertices : VsT, idx : VectorT*, invidx : VectorT*) : LibC::Int
  fun vcount = igraph_vcount(graph : T*) : IntegerT
  fun ecount = igraph_ecount(graph : T*) : IntegerT
  fun neighbors = igraph_neighbors(graph : T*, neis : VectorT*, vid : IntegerT, mode : NeimodeT) : LibC::Int
  fun is_directed = igraph_is_directed(graph : T*) : BoolT
  fun degree = igraph_degree(graph : T*, res : VectorT*, vids : VsT, mode : NeimodeT, loops : BoolT) : LibC::Int
  fun edge = igraph_edge(graph : T*, eid : IntegerT, from : IntegerT*, to : IntegerT*) : LibC::Int
  fun edges = igraph_edges(graph : T*, eids : EsT, edges : VectorT*) : LibC::Int
  fun get_eid = igraph_get_eid(graph : T*, eid : IntegerT*, from : IntegerT, to : IntegerT, directed : BoolT, error : BoolT) : LibC::Int
  fun get_eids = igraph_get_eids(graph : T*, eids : VectorT*, pairs : VectorT*, path : VectorT*, directed : BoolT, error : BoolT) : LibC::Int
  fun get_eids_multi = igraph_get_eids_multi(graph : T*, eids : VectorT*, pairs : VectorT*, path : VectorT*, directed : BoolT, error : BoolT) : LibC::Int
  fun adjacent = igraph_adjacent(graph : T*, eids : VectorT*, vid : IntegerT, mode : NeimodeT) : LibC::Int
  fun incident = igraph_incident(graph : T*, eids : VectorT*, vid : IntegerT, mode : NeimodeT) : LibC::Int
  fun create = igraph_create(graph : T*, edges : VectorT*, n : IntegerT, directed : BoolT) : LibC::Int
  fun small = igraph_small(graph : T*, n : IntegerT, directed : BoolT, ...) : LibC::Int
  fun adjacency = igraph_adjacency(graph : T*, adjmatrix : MatrixT*, mode : AdjacencyT) : LibC::Int
  enum AdjacencyT
    AdjDirected = 0
    AdjUndirected = 1
    AdjMax = 1
    AdjUpper = 2
    AdjLower = 3
    AdjMin = 4
    AdjPlus = 5
  end
  fun weighted_adjacency = igraph_weighted_adjacency(graph : T*, adjmatrix : MatrixT*, mode : AdjacencyT, attr : LibC::Char*, loops : BoolT) : LibC::Int
  fun star = igraph_star(graph : T*, n : IntegerT, mode : StarModeT, center : IntegerT) : LibC::Int
  enum StarModeT
    StarOut = 0
    StarIn = 1
    StarUndirected = 2
    StarMutual = 3
  end
  fun lattice = igraph_lattice(graph : T*, dimvector : VectorT*, nei : IntegerT, directed : BoolT, mutual : BoolT, circular : BoolT) : LibC::Int
  fun ring = igraph_ring(graph : T*, n : IntegerT, directed : BoolT, mutual : BoolT, circular : BoolT) : LibC::Int
  fun tree = igraph_tree(graph : T*, n : IntegerT, children : IntegerT, type : TreeModeT) : LibC::Int
  enum TreeModeT
    TreeOut = 0
    TreeIn = 1
    TreeUndirected = 2
  end
  fun full = igraph_full(graph : T*, n : IntegerT, directed : BoolT, loops : BoolT) : LibC::Int
  fun full_citation = igraph_full_citation(graph : T*, n : IntegerT, directed : BoolT) : LibC::Int
  fun atlas = igraph_atlas(graph : T*, number : LibC::Int) : LibC::Int
  fun extended_chordal_ring = igraph_extended_chordal_ring(graph : T*, nodes : IntegerT, w : MatrixT*) : LibC::Int
  fun connect_neighborhood = igraph_connect_neighborhood(graph : T*, order : IntegerT, mode : NeimodeT) : LibC::Int
  fun linegraph = igraph_linegraph(graph : T*, linegraph : T*) : LibC::Int
  fun de_bruijn = igraph_de_bruijn(graph : T*, m : IntegerT, n : IntegerT) : LibC::Int
  fun kautz = igraph_kautz(graph : T*, m : IntegerT, n : IntegerT) : LibC::Int
  fun famous = igraph_famous(graph : T*, name : LibC::Char*) : LibC::Int
  fun lcf_vector = igraph_lcf_vector(graph : T*, n : IntegerT, shifts : VectorT*, repeats : IntegerT) : LibC::Int
  fun lcf = igraph_lcf(graph : T*, n : IntegerT, ...) : LibC::Int
  fun barabasi_game = igraph_barabasi_game(graph : T*, n : IntegerT, power : RealT, m : IntegerT, outseq : VectorT*, outpref : BoolT, a : RealT, directed : BoolT, algo : BarabasiAlgorithmT, start_from : T*) : LibC::Int
  enum BarabasiAlgorithmT
    BarabasiBag = 0
    BarabasiPsumtree = 1
    BarabasiPsumtreeMultiple = 2
  end
  fun nonlinear_barabasi_game = igraph_nonlinear_barabasi_game(graph : T*, n : IntegerT, power : RealT, m : IntegerT, outseq : VectorT*, outpref : BoolT, zeroappeal : RealT, directed : BoolT) : LibC::Int
  fun erdos_renyi_game = igraph_erdos_renyi_game(graph : T*, type : ErdosRenyiT, n : IntegerT, p : RealT, directed : BoolT, loops : BoolT) : LibC::Int
  enum ErdosRenyiT
    ErdosRenyiGnp = 0
    ErdosRenyiGnm = 1
  end
  fun erdos_renyi_game_gnp = igraph_erdos_renyi_game_gnp(graph : T*, n : IntegerT, p : RealT, directed : BoolT, loops : BoolT) : LibC::Int
  fun erdos_renyi_game_gnm = igraph_erdos_renyi_game_gnm(graph : T*, n : IntegerT, m : RealT, directed : BoolT, loops : BoolT) : LibC::Int
  fun degree_sequence_game = igraph_degree_sequence_game(graph : T*, out_deg : VectorT*, in_deg : VectorT*, method : DegseqT) : LibC::Int
  enum DegseqT
    DegseqSimple = 0
    DegseqVl = 1
    DegseqSimpleNoMultiple = 2
  end
  fun growing_random_game = igraph_growing_random_game(graph : T*, n : IntegerT, m : IntegerT, directed : BoolT, citation : BoolT) : LibC::Int
  fun barabasi_aging_game = igraph_barabasi_aging_game(graph : T*, nodes : IntegerT, m : IntegerT, outseq : VectorT*, outpref : BoolT, pa_exp : RealT, aging_exp : RealT, aging_bin : IntegerT, zero_deg_appeal : RealT, zero_age_appeal : RealT, deg_coef : RealT, age_coef : RealT, directed : BoolT) : LibC::Int
  fun recent_degree_game = igraph_recent_degree_game(graph : T*, n : IntegerT, power : RealT, window : IntegerT, m : IntegerT, outseq : VectorT*, outpref : BoolT, zero_appeal : RealT, directed : BoolT) : LibC::Int
  fun recent_degree_aging_game = igraph_recent_degree_aging_game(graph : T*, nodes : IntegerT, m : IntegerT, outseq : VectorT*, outpref : BoolT, pa_exp : RealT, aging_exp : RealT, aging_bin : IntegerT, window : IntegerT, zero_appeal : RealT, directed : BoolT) : LibC::Int
  fun callaway_traits_game = igraph_callaway_traits_game(graph : T*, nodes : IntegerT, types : IntegerT, edges_per_step : IntegerT, type_dist : VectorT*, pref_matrix : MatrixT*, directed : BoolT) : LibC::Int
  fun establishment_game = igraph_establishment_game(graph : T*, nodes : IntegerT, types : IntegerT, k : IntegerT, type_dist : VectorT*, pref_matrix : MatrixT*, directed : BoolT) : LibC::Int
  fun grg_game = igraph_grg_game(graph : T*, nodes : IntegerT, radius : RealT, torus : BoolT, x : VectorT*, y : VectorT*) : LibC::Int
  fun preference_game = igraph_preference_game(graph : T*, nodes : IntegerT, types : IntegerT, type_dist : VectorT*, fixed_sizes : BoolT, pref_matrix : MatrixT*, node_type_vec : VectorT*, directed : BoolT, loops : BoolT) : LibC::Int
  fun asymmetric_preference_game = igraph_asymmetric_preference_game(graph : T*, nodes : IntegerT, types : IntegerT, type_dist_matrix : MatrixT*, pref_matrix : MatrixT*, node_type_in_vec : VectorT*, node_type_out_vec : VectorT*, loops : BoolT) : LibC::Int
  fun rewire_edges = igraph_rewire_edges(graph : T*, prob : RealT, loops : BoolT, multiple : BoolT) : LibC::Int
  fun watts_strogatz_game = igraph_watts_strogatz_game(graph : T*, dim : IntegerT, size : IntegerT, nei : IntegerT, p : RealT, loops : BoolT, multiple : BoolT) : LibC::Int
  fun lastcit_game = igraph_lastcit_game(graph : T*, nodes : IntegerT, edges_per_node : IntegerT, agebins : IntegerT, preference : VectorT*, directed : BoolT) : LibC::Int
  fun cited_type_game = igraph_cited_type_game(graph : T*, nodes : IntegerT, types : VectorT*, pref : VectorT*, edges_per_step : IntegerT, directed : BoolT) : LibC::Int
  fun citing_cited_type_game = igraph_citing_cited_type_game(graph : T*, nodes : IntegerT, types : VectorT*, pref : MatrixT*, edges_per_step : IntegerT, directed : BoolT) : LibC::Int
  fun forest_fire_game = igraph_forest_fire_game(graph : T*, nodes : IntegerT, fw_prob : RealT, bw_factor : RealT, ambs : IntegerT, directed : BoolT) : LibC::Int
  fun simple_interconnected_islands_game = igraph_simple_interconnected_islands_game(graph : T*, islands_n : IntegerT, islands_size : IntegerT, islands_pin : RealT, n_inter : IntegerT) : LibC::Int
  fun static_fitness_game = igraph_static_fitness_game(graph : T*, no_of_edges : IntegerT, fitness_out : VectorT*, fitness_in : VectorT*, loops : BoolT, multiple : BoolT) : LibC::Int
  fun static_power_law_game = igraph_static_power_law_game(graph : T*, no_of_nodes : IntegerT, no_of_edges : IntegerT, exponent_out : RealT, exponent_in : RealT, loops : BoolT, multiple : BoolT, finite_size_correction : BoolT) : LibC::Int
  fun k_regular_game = igraph_k_regular_game(graph : T*, no_of_nodes : IntegerT, k : IntegerT, directed : BoolT, multiple : BoolT) : LibC::Int
  fun sbm_game = igraph_sbm_game(graph : T*, n : IntegerT, pref_matrix : MatrixT*, block_sizes : VectorIntT*, directed : BoolT, loops : BoolT) : LibC::Int
  fun deterministic_optimal_imitation = igraph_deterministic_optimal_imitation(graph : T*, vid : IntegerT, optimality : OptimalT, quantities : VectorT*, strategies : VectorT*, mode : NeimodeT) : LibC::Int
  enum OptimalT
    Minimum = 0
    Maximum = 1
  end
  fun moran_process = igraph_moran_process(graph : T*, weights : VectorT*, quantities : VectorT*, strategies : VectorT*, mode : NeimodeT) : LibC::Int
  fun roulette_wheel_imitation = igraph_roulette_wheel_imitation(graph : T*, vid : IntegerT, islocal : BoolT, quantities : VectorT*, strategies : VectorT*, mode : NeimodeT) : LibC::Int
  fun stochastic_imitation = igraph_stochastic_imitation(graph : T*, vid : IntegerT, algo : ImitateAlgorithmT, quantities : VectorT*, strategies : VectorT*, mode : NeimodeT) : LibC::Int
  enum ImitateAlgorithmT
    ImitateAugmented = 0
    ImitateBlind = 1
    ImitateContracted = 2
  end
  fun closeness = igraph_closeness(graph : T*, res : VectorT*, vids : VsT, mode : NeimodeT, weights : VectorT*, normalized : BoolT) : LibC::Int
  fun closeness_estimate = igraph_closeness_estimate(graph : T*, res : VectorT*, vids : VsT, mode : NeimodeT, cutoff : RealT, weights : VectorT*, normalized : BoolT) : LibC::Int
  fun betweenness = igraph_betweenness(graph : T*, res : VectorT*, vids : VsT, directed : BoolT, weights : VectorT*, nobigint : BoolT) : LibC::Int
  fun betweenness_estimate = igraph_betweenness_estimate(graph : T*, res : VectorT*, vids : VsT, directed : BoolT, cutoff : RealT, weights : VectorT*, nobigint : BoolT) : LibC::Int
  fun edge_betweenness = igraph_edge_betweenness(graph : T*, result : VectorT*, directed : BoolT, weigths : VectorT*) : LibC::Int
  fun edge_betweenness_estimate = igraph_edge_betweenness_estimate(graph : T*, result : VectorT*, directed : BoolT, cutoff : RealT, weights : VectorT*) : LibC::Int
  fun pagerank_old = igraph_pagerank_old(graph : T*, res : VectorT*, vids : VsT, directed : BoolT, niter : IntegerT, eps : RealT, damping : RealT, old : BoolT) : LibC::Int
  PagerankAlgoPower = 0
  PagerankAlgoArpack = 1
  PagerankAlgoPrpack = 2
  struct PagerankPowerOptionsT
    niter : IntegerT
    eps : RealT
  end
  fun pagerank = igraph_pagerank(graph : T*, algo : PagerankAlgoT, vector : VectorT*, value : RealT*, vids : VsT, directed : BoolT, damping : RealT, weights : VectorT*, options : Void*) : LibC::Int
  enum PagerankAlgoT
    PagerankAlgoPower = 0
    PagerankAlgoArpack = 1
    PagerankAlgoPrpack = 2
  end
  fun personalized_pagerank = igraph_personalized_pagerank(graph : T*, algo : PagerankAlgoT, vector : VectorT*, value : RealT*, vids : VsT, directed : BoolT, damping : RealT, reset : VectorT*, weights : VectorT*, options : Void*) : LibC::Int
  fun personalized_pagerank_vs = igraph_personalized_pagerank_vs(graph : T*, algo : PagerankAlgoT, vector : VectorT*, value : RealT*, vids : VsT, directed : BoolT, damping : RealT, reset_vids : VsT, weights : VectorT*, options : Void*) : LibC::Int
  fun eigenvector_centrality = igraph_eigenvector_centrality(graph : T*, vector : VectorT*, value : RealT*, directed : BoolT, scale : BoolT, weights : VectorT*, options : ArpackOptionsT*) : LibC::Int
  fun hub_score = igraph_hub_score(graph : T*, vector : VectorT*, value : RealT*, scale : BoolT, weights : VectorT*, options : ArpackOptionsT*) : LibC::Int
  fun authority_score = igraph_authority_score(graph : T*, vector : VectorT*, value : RealT*, scale : BoolT, weights : VectorT*, options : ArpackOptionsT*) : LibC::Int
  fun constraint = igraph_constraint(graph : T*, res : VectorT*, vids : VsT, weights : VectorT*) : LibC::Int
  fun strength = igraph_strength(graph : T*, res : VectorT*, vids : VsT, mode : NeimodeT, loops : BoolT, weights : VectorT*) : LibC::Int
  fun convergence_degree = igraph_convergence_degree(graph : T*, result : VectorT*, ins : VectorT*, outs : VectorT*) : LibC::Int
  fun sort_vertex_ids_by_degree = igraph_sort_vertex_ids_by_degree(graph : T*, outvids : VectorT*, vids : VsT, mode : NeimodeT, loops : BoolT, order : OrderT, only_indices : BoolT) : LibC::Int
  enum OrderT
    Ascending = 0
    Descending = 1
  end
  fun centralization = igraph_centralization(scores : VectorT*, theoretical_max : RealT, normalized : BoolT) : RealT
  fun centralization_degree = igraph_centralization_degree(graph : T*, res : VectorT*, mode : NeimodeT, loops : BoolT, centralization : RealT*, theoretical_max : RealT*, normalized : BoolT) : LibC::Int
  fun centralization_degree_tmax = igraph_centralization_degree_tmax(graph : T*, nodes : IntegerT, mode : NeimodeT, loops : BoolT, res : RealT*) : LibC::Int
  fun centralization_betweenness = igraph_centralization_betweenness(graph : T*, res : VectorT*, directed : BoolT, nobigint : BoolT, centralization : RealT*, theoretical_max : RealT*, normalized : BoolT) : LibC::Int
  fun centralization_betweenness_tmax = igraph_centralization_betweenness_tmax(graph : T*, nodes : IntegerT, directed : BoolT, res : RealT*) : LibC::Int
  fun centralization_closeness = igraph_centralization_closeness(graph : T*, res : VectorT*, mode : NeimodeT, centralization : RealT*, theoretical_max : RealT*, normalized : BoolT) : LibC::Int
  fun centralization_closeness_tmax = igraph_centralization_closeness_tmax(graph : T*, nodes : IntegerT, mode : NeimodeT, res : RealT*) : LibC::Int
  fun centralization_eigenvector_centrality = igraph_centralization_eigenvector_centrality(graph : T*, vector : VectorT*, value : RealT*, directed : BoolT, scale : BoolT, options : ArpackOptionsT*, centralization : RealT*, theoretical_max : RealT*, normalized : BoolT) : LibC::Int
  fun centralization_eigenvector_centrality_tmax = igraph_centralization_eigenvector_centrality_tmax(graph : T*, nodes : IntegerT, directed : BoolT, scale : BoolT, res : RealT*) : LibC::Int
  fun diameter = igraph_diameter(graph : T*, res : IntegerT*, from : IntegerT*, to : IntegerT*, path : VectorT*, directed : BoolT, unconn : BoolT) : LibC::Int
  fun diameter_dijkstra = igraph_diameter_dijkstra(graph : T*, weights : VectorT*, pres : RealT*, pfrom : IntegerT*, pto : IntegerT*, path : VectorT*, directed : BoolT, unconn : BoolT) : LibC::Int
  fun shortest_paths = igraph_shortest_paths(graph : T*, res : MatrixT*, from : VsT, to : VsT, mode : NeimodeT) : LibC::Int
  fun get_shortest_paths = igraph_get_shortest_paths(graph : T*, vertices : VectorPtrT*, edges : VectorPtrT*, from : IntegerT, to : VsT, mode : NeimodeT, predecessors : VectorLongT*, inbound_edges : VectorLongT*) : LibC::Int
  fun get_shortest_path = igraph_get_shortest_path(graph : T*, vertices : VectorT*, edges : VectorT*, from : IntegerT, to : IntegerT, mode : NeimodeT) : LibC::Int
  fun get_all_shortest_paths = igraph_get_all_shortest_paths(graph : T*, res : VectorPtrT*, nrgeo : VectorT*, from : IntegerT, to : VsT, mode : NeimodeT) : LibC::Int
  fun shortest_paths_dijkstra = igraph_shortest_paths_dijkstra(graph : T*, res : MatrixT*, from : VsT, to : VsT, weights : VectorT*, mode : NeimodeT) : LibC::Int
  fun shortest_paths_bellman_ford = igraph_shortest_paths_bellman_ford(graph : T*, res : MatrixT*, from : VsT, to : VsT, weights : VectorT*, mode : NeimodeT) : LibC::Int
  fun get_shortest_paths_dijkstra = igraph_get_shortest_paths_dijkstra(graph : T*, vertices : VectorPtrT*, edges : VectorPtrT*, from : IntegerT, to : VsT, weights : VectorT*, mode : NeimodeT, predecessors : VectorLongT*, inbound_edges : VectorLongT*) : LibC::Int
  fun get_shortest_path_dijkstra = igraph_get_shortest_path_dijkstra(graph : T*, vertices : VectorT*, edges : VectorT*, from : IntegerT, to : IntegerT, weights : VectorT*, mode : NeimodeT) : LibC::Int
  fun get_all_shortest_paths_dijkstra = igraph_get_all_shortest_paths_dijkstra(graph : T*, res : VectorPtrT*, nrgeo : VectorT*, from : IntegerT, to : VsT, weights : VectorT*, mode : NeimodeT) : LibC::Int
  fun shortest_paths_johnson = igraph_shortest_paths_johnson(graph : T*, res : MatrixT*, from : VsT, to : VsT, weights : VectorT*) : LibC::Int
  fun average_path_length = igraph_average_path_length(graph : T*, res : RealT*, directed : BoolT, unconn : BoolT) : LibC::Int
  fun path_length_hist = igraph_path_length_hist(graph : T*, res : VectorT*, unconnected : RealT*, directed : BoolT) : LibC::Int
  fun eccentricity = igraph_eccentricity(graph : T*, res : VectorT*, vids : VsT, mode : NeimodeT) : LibC::Int
  fun radius = igraph_radius(graph : T*, radius : RealT*, mode : NeimodeT) : LibC::Int
  fun clusters = igraph_clusters(graph : T*, membership : VectorT*, csize : VectorT*, no : IntegerT*, mode : ConnectednessT) : LibC::Int
  enum ConnectednessT
    Weak = 1
    Strong = 2
  end
  fun is_connected = igraph_is_connected(graph : T*, res : BoolT*, mode : ConnectednessT) : LibC::Int
  fun decompose_destroy = igraph_decompose_destroy(complist : VectorPtrT*)
  fun decompose = igraph_decompose(graph : T*, components : VectorPtrT*, mode : ConnectednessT, maxcompno : LibC::Long, minelements : LibC::Long) : LibC::Int
  fun articulation_points = igraph_articulation_points(graph : T*, res : VectorT*) : LibC::Int
  fun biconnected_components = igraph_biconnected_components(graph : T*, no : IntegerT*, tree_edges : VectorPtrT*, component_edges : VectorPtrT*, components : VectorPtrT*, articulation_points : VectorT*) : LibC::Int
  AttributeDefault = 0
  AttributeNumeric = 1
  AttributeBoolean = 5
  AttributeString = 2
  AttributeRObject = 3
  AttributePyObject = 4
  struct AttributeRecordT
    name : LibC::Char*
    type : AttributeTypeT
    value : Void*
  end
  enum AttributeTypeT
    AttributeDefault = 0
    AttributeNumeric = 1
    AttributeBoolean = 5
    AttributeString = 2
    AttributeRObject = 3
    AttributePyObject = 4
  end
  AttributeGraph = 0
  AttributeVertex = 1
  AttributeEdge = 2
  AttributeCombineIgnore = 0
  AttributeCombineDefault = 1
  AttributeCombineFunction = 2
  AttributeCombineSum = 3
  AttributeCombineProd = 4
  AttributeCombineMin = 5
  AttributeCombineMax = 6
  AttributeCombineRandom = 7
  AttributeCombineFirst = 8
  AttributeCombineLast = 9
  AttributeCombineMean = 10
  AttributeCombineMedian = 11
  AttributeCombineConcat = 12
  struct AttributeCombinationRecordT
    name : LibC::Char*
    type : AttributeCombinationTypeT
    func : Void*
  end
  enum AttributeCombinationTypeT
    AttributeCombineIgnore = 0
    AttributeCombineDefault = 1
    AttributeCombineFunction = 2
    AttributeCombineSum = 3
    AttributeCombineProd = 4
    AttributeCombineMin = 5
    AttributeCombineMax = 6
    AttributeCombineRandom = 7
    AttributeCombineFirst = 8
    AttributeCombineLast = 9
    AttributeCombineMean = 10
    AttributeCombineMedian = 11
    AttributeCombineConcat = 12
  end
  struct AttributeCombinationT
    list : VectorPtrT
  end
  fun attribute_combination_init = igraph_attribute_combination_init(comb : AttributeCombinationT*) : LibC::Int
  fun attribute_combination = igraph_attribute_combination(comb : AttributeCombinationT*, ...) : LibC::Int
  fun attribute_combination_destroy = igraph_attribute_combination_destroy(comb : AttributeCombinationT*)
  fun attribute_combination_add = igraph_attribute_combination_add(comb : AttributeCombinationT*, name : LibC::Char*, type : AttributeCombinationTypeT, func : Void*) : LibC::Int
  fun attribute_combination_remove = igraph_attribute_combination_remove(comb : AttributeCombinationT*, name : LibC::Char*) : LibC::Int
  fun attribute_combination_query = igraph_attribute_combination_query(comb : AttributeCombinationT*, name : LibC::Char*, type : AttributeCombinationTypeT*, func : Void**) : LibC::Int
  struct AttributeTableT
    init : T*, VectorPtrT* -> LibC::Int
    destroy : T* -> Void
    copy : T*, T*, BoolT, BoolT, BoolT -> LibC::Int
    add_vertices : T*, LibC::Long, VectorPtrT* -> LibC::Int
    permute_vertices : T*, T*, VectorT* -> LibC::Int
    combine_vertices : T*, T*, VectorPtrT*, AttributeCombinationT* -> LibC::Int
    add_edges : T*, VectorT*, VectorPtrT* -> LibC::Int
    permute_edges : T*, T*, VectorT* -> LibC::Int
    combine_edges : T*, T*, VectorPtrT*, AttributeCombinationT* -> LibC::Int
    get_info : T*, StrvectorT*, VectorT*, StrvectorT*, VectorT*, StrvectorT*, VectorT* -> LibC::Int
    has_attr : T*, AttributeElemtypeT, LibC::Char* -> BoolT
    gettype : T*, AttributeTypeT*, AttributeElemtypeT, LibC::Char* -> LibC::Int
    get_numeric_graph_attr : T*, LibC::Char*, VectorT* -> LibC::Int
    get_string_graph_attr : T*, LibC::Char*, StrvectorT* -> LibC::Int
    get_bool_graph_attr : T*, LibC::Char*, VectorBoolT* -> LibC::Int
    get_numeric_vertex_attr : T*, LibC::Char*, VsT, VectorT* -> LibC::Int
    get_string_vertex_attr : T*, LibC::Char*, VsT, StrvectorT* -> LibC::Int
    get_bool_vertex_attr : T*, LibC::Char*, VsT, VectorBoolT* -> LibC::Int
    get_numeric_edge_attr : T*, LibC::Char*, EsT, VectorT* -> LibC::Int
    get_string_edge_attr : T*, LibC::Char*, EsT, StrvectorT* -> LibC::Int
    get_bool_edge_attr : T*, LibC::Char*, EsT, VectorBoolT* -> LibC::Int
  end
  enum AttributeElemtypeT
    AttributeGraph = 0
    AttributeVertex = 1
    AttributeEdge = 2
  end
  fun i_set_attribute_table = igraph_i_set_attribute_table(table : AttributeTableT*) : AttributeTableT*
  fun has_attribute_table = igraph_has_attribute_table : BoolT
  fun i_attribute_init = igraph_i_attribute_init(graph : T*, attr : Void*) : LibC::Int
  fun i_attribute_destroy = igraph_i_attribute_destroy(graph : T*)
  fun i_attribute_copy = igraph_i_attribute_copy(to : T*, from : T*, ga : BoolT, va : BoolT, ea : BoolT) : LibC::Int
  fun i_attribute_add_vertices = igraph_i_attribute_add_vertices(graph : T*, nv : LibC::Long, attr : Void*) : LibC::Int
  fun i_attribute_permute_vertices = igraph_i_attribute_permute_vertices(graph : T*, newgraph : T*, idx : VectorT*) : LibC::Int
  fun i_attribute_combine_vertices = igraph_i_attribute_combine_vertices(graph : T*, newgraph : T*, merges : VectorPtrT*, comb : AttributeCombinationT*) : LibC::Int
  fun i_attribute_add_edges = igraph_i_attribute_add_edges(graph : T*, edges : VectorT*, attr : Void*) : LibC::Int
  fun i_attribute_permute_edges = igraph_i_attribute_permute_edges(graph : T*, newgraph : T*, idx : VectorT*) : LibC::Int
  fun i_attribute_combine_edges = igraph_i_attribute_combine_edges(graph : T*, newgraph : T*, merges : VectorPtrT*, comb : AttributeCombinationT*) : LibC::Int
  fun i_attribute_get_info = igraph_i_attribute_get_info(graph : T*, gnames : StrvectorT*, gtypes : VectorT*, vnames : StrvectorT*, vtypes : VectorT*, enames : StrvectorT*, etypes : VectorT*) : LibC::Int
  fun i_attribute_has_attr = igraph_i_attribute_has_attr(graph : T*, type : AttributeElemtypeT, name : LibC::Char*) : BoolT
  fun i_attribute_gettype = igraph_i_attribute_gettype(graph : T*, type : AttributeTypeT*, elemtype : AttributeElemtypeT, name : LibC::Char*) : LibC::Int
  fun i_attribute_get_numeric_graph_attr = igraph_i_attribute_get_numeric_graph_attr(graph : T*, name : LibC::Char*, value : VectorT*) : LibC::Int
  fun i_attribute_get_numeric_vertex_attr = igraph_i_attribute_get_numeric_vertex_attr(graph : T*, name : LibC::Char*, vs : VsT, value : VectorT*) : LibC::Int
  fun i_attribute_get_numeric_edge_attr = igraph_i_attribute_get_numeric_edge_attr(graph : T*, name : LibC::Char*, es : EsT, value : VectorT*) : LibC::Int
  fun i_attribute_get_string_graph_attr = igraph_i_attribute_get_string_graph_attr(graph : T*, name : LibC::Char*, value : StrvectorT*) : LibC::Int
  fun i_attribute_get_string_vertex_attr = igraph_i_attribute_get_string_vertex_attr(graph : T*, name : LibC::Char*, vs : VsT, value : StrvectorT*) : LibC::Int
  fun i_attribute_get_string_edge_attr = igraph_i_attribute_get_string_edge_attr(graph : T*, name : LibC::Char*, es : EsT, value : StrvectorT*) : LibC::Int
  fun i_attribute_get_bool_graph_attr = igraph_i_attribute_get_bool_graph_attr(graph : T*, name : LibC::Char*, value : VectorBoolT*) : LibC::Int
  fun i_attribute_get_bool_vertex_attr = igraph_i_attribute_get_bool_vertex_attr(graph : T*, name : LibC::Char*, vs : VsT, value : VectorBoolT*) : LibC::Int
  fun i_attribute_get_bool_edge_attr = igraph_i_attribute_get_bool_edge_attr(graph : T*, name : LibC::Char*, es : EsT, value : VectorBoolT*) : LibC::Int
  fun cattribute_gan = igraph_cattribute_GAN(graph : T*, name : LibC::Char*) : RealT
  fun cattribute_gab = igraph_cattribute_GAB(graph : T*, name : LibC::Char*) : BoolT
  fun cattribute_gas = igraph_cattribute_GAS(graph : T*, name : LibC::Char*) : LibC::Char*
  fun cattribute_van = igraph_cattribute_VAN(graph : T*, name : LibC::Char*, vid : IntegerT) : RealT
  fun cattribute_vab = igraph_cattribute_VAB(graph : T*, name : LibC::Char*, vid : IntegerT) : BoolT
  fun cattribute_vas = igraph_cattribute_VAS(graph : T*, name : LibC::Char*, vid : IntegerT) : LibC::Char*
  fun cattribute_ean = igraph_cattribute_EAN(graph : T*, name : LibC::Char*, eid : IntegerT) : RealT
  fun cattribute_eab = igraph_cattribute_EAB(graph : T*, name : LibC::Char*, eid : IntegerT) : BoolT
  fun cattribute_eas = igraph_cattribute_EAS(graph : T*, name : LibC::Char*, eid : IntegerT) : LibC::Char*
  fun cattribute_vanv = igraph_cattribute_VANV(graph : T*, name : LibC::Char*, vids : VsT, result : VectorT*) : LibC::Int
  fun cattribute_eanv = igraph_cattribute_EANV(graph : T*, name : LibC::Char*, eids : EsT, result : VectorT*) : LibC::Int
  fun cattribute_vasv = igraph_cattribute_VASV(graph : T*, name : LibC::Char*, vids : VsT, result : StrvectorT*) : LibC::Int
  fun cattribute_easv = igraph_cattribute_EASV(graph : T*, name : LibC::Char*, eids : EsT, result : StrvectorT*) : LibC::Int
  fun cattribute_vabv = igraph_cattribute_VABV(graph : T*, name : LibC::Char*, vids : VsT, result : VectorBoolT*) : LibC::Int
  fun cattribute_eabv = igraph_cattribute_EABV(graph : T*, name : LibC::Char*, eids : EsT, result : VectorBoolT*) : LibC::Int
  fun cattribute_list = igraph_cattribute_list(graph : T*, gnames : StrvectorT*, gtypes : VectorT*, vnames : StrvectorT*, vtypes : VectorT*, enames : StrvectorT*, etypes : VectorT*) : LibC::Int
  fun cattribute_has_attr = igraph_cattribute_has_attr(graph : T*, type : AttributeElemtypeT, name : LibC::Char*) : BoolT
  fun cattribute_gan_set = igraph_cattribute_GAN_set(graph : T*, name : LibC::Char*, value : RealT) : LibC::Int
  fun cattribute_gab_set = igraph_cattribute_GAB_set(graph : T*, name : LibC::Char*, value : BoolT) : LibC::Int
  fun cattribute_gas_set = igraph_cattribute_GAS_set(graph : T*, name : LibC::Char*, value : LibC::Char*) : LibC::Int
  fun cattribute_van_set = igraph_cattribute_VAN_set(graph : T*, name : LibC::Char*, vid : IntegerT, value : RealT) : LibC::Int
  fun cattribute_vab_set = igraph_cattribute_VAB_set(graph : T*, name : LibC::Char*, vid : IntegerT, value : BoolT) : LibC::Int
  fun cattribute_vas_set = igraph_cattribute_VAS_set(graph : T*, name : LibC::Char*, vid : IntegerT, value : LibC::Char*) : LibC::Int
  fun cattribute_ean_set = igraph_cattribute_EAN_set(graph : T*, name : LibC::Char*, eid : IntegerT, value : RealT) : LibC::Int
  fun cattribute_eab_set = igraph_cattribute_EAB_set(graph : T*, name : LibC::Char*, eid : IntegerT, value : BoolT) : LibC::Int
  fun cattribute_eas_set = igraph_cattribute_EAS_set(graph : T*, name : LibC::Char*, eid : IntegerT, value : LibC::Char*) : LibC::Int
  fun cattribute_van_setv = igraph_cattribute_VAN_setv(graph : T*, name : LibC::Char*, v : VectorT*) : LibC::Int
  fun cattribute_vab_setv = igraph_cattribute_VAB_setv(graph : T*, name : LibC::Char*, v : VectorBoolT*) : LibC::Int
  fun cattribute_vas_setv = igraph_cattribute_VAS_setv(graph : T*, name : LibC::Char*, sv : StrvectorT*) : LibC::Int
  fun cattribute_ean_setv = igraph_cattribute_EAN_setv(graph : T*, name : LibC::Char*, v : VectorT*) : LibC::Int
  fun cattribute_eab_setv = igraph_cattribute_EAB_setv(graph : T*, name : LibC::Char*, v : VectorBoolT*) : LibC::Int
  fun cattribute_eas_setv = igraph_cattribute_EAS_setv(graph : T*, name : LibC::Char*, sv : StrvectorT*) : LibC::Int
  fun cattribute_remove_g = igraph_cattribute_remove_g(graph : T*, name : LibC::Char*)
  fun cattribute_remove_v = igraph_cattribute_remove_v(graph : T*, name : LibC::Char*)
  fun cattribute_remove_e = igraph_cattribute_remove_e(graph : T*, name : LibC::Char*)
  fun cattribute_remove_all = igraph_cattribute_remove_all(graph : T*, g : BoolT, v : BoolT, e : BoolT)
  fun are_connected = igraph_are_connected(graph : T*, v1 : IntegerT, v2 : IntegerT, res : BoolT*) : LibC::Int
  fun minimum_spanning_tree = igraph_minimum_spanning_tree(graph : T*, res : VectorT*, weights : VectorT*) : LibC::Int
  fun minimum_spanning_tree_unweighted = igraph_minimum_spanning_tree_unweighted(graph : T*, mst : T*) : LibC::Int
  fun minimum_spanning_tree_prim = igraph_minimum_spanning_tree_prim(graph : T*, mst : T*, weights : VectorT*) : LibC::Int
  fun subcomponent = igraph_subcomponent(graph : T*, res : VectorT*, vid : RealT, mode : NeimodeT) : LibC::Int
  fun rewire = igraph_rewire(graph : T*, n : IntegerT, mode : RewiringT) : LibC::Int
  enum RewiringT
    RewiringSimple = 0
    RewiringSimpleLoops = 1
  end
  fun subgraph = igraph_subgraph(graph : T*, res : T*, vids : VsT) : LibC::Int
  fun induced_subgraph_map = igraph_induced_subgraph_map(graph : T*, res : T*, vids : VsT, impl : SubgraphImplementationT, map : VectorT*, invmap : VectorT*) : LibC::Int
  enum SubgraphImplementationT
    SubgraphAuto = 0
    SubgraphCopyAndDelete = 1
    SubgraphCreateFromScratch = 2
  end
  fun induced_subgraph = igraph_induced_subgraph(graph : T*, res : T*, vids : VsT, impl : SubgraphImplementationT) : LibC::Int
  fun subgraph_edges = igraph_subgraph_edges(graph : T*, res : T*, eids : EsT, delete_vertices : BoolT) : LibC::Int
  fun simplify = igraph_simplify(graph : T*, multiple : BoolT, loops : BoolT, edge_comb : AttributeCombinationT*) : LibC::Int
  fun reciprocity = igraph_reciprocity(graph : T*, res : RealT*, ignore_loops : BoolT, mode : ReciprocityT) : LibC::Int
  enum ReciprocityT
    ReciprocityDefault = 0
    ReciprocityRatio = 1
  end
  fun maxdegree = igraph_maxdegree(graph : T*, res : IntegerT*, vids : VsT, mode : NeimodeT, loops : BoolT) : LibC::Int
  fun density = igraph_density(graph : T*, res : RealT*, loops : BoolT) : LibC::Int
  fun is_loop = igraph_is_loop(graph : T*, res : VectorBoolT*, es : EsT) : LibC::Int
  fun is_simple = igraph_is_simple(graph : T*, res : BoolT*) : LibC::Int
  fun has_multiple = igraph_has_multiple(graph : T*, res : BoolT*) : LibC::Int
  fun is_multiple = igraph_is_multiple(graph : T*, res : VectorBoolT*, es : EsT) : LibC::Int
  fun count_multiple = igraph_count_multiple(graph : T*, res : VectorT*, es : EsT) : LibC::Int
  fun girth = igraph_girth(graph : T*, girth : IntegerT*, circle : VectorT*) : LibC::Int
  fun add_edge = igraph_add_edge(graph : T*, from : IntegerT, to : IntegerT) : LibC::Int
  fun unfold_tree = igraph_unfold_tree(graph : T*, tree : T*, mode : NeimodeT, roots : VectorT*, vertex_index : VectorT*) : LibC::Int
  fun is_mutual = igraph_is_mutual(graph : T*, res : VectorBoolT*, es : EsT) : LibC::Int
  fun maximum_cardinality_search = igraph_maximum_cardinality_search(graph : T*, alpha : VectorT*, alpham1 : VectorT*) : LibC::Int
  fun is_chordal = igraph_is_chordal(graph : T*, alpha : VectorT*, alpham1 : VectorT*, chordal : BoolT*, fill_in : VectorT*, newgraph : T*) : LibC::Int
  fun avg_nearest_neighbor_degree = igraph_avg_nearest_neighbor_degree(graph : T*, vids : VsT, knn : VectorT*, knnk : VectorT*, weights : VectorT*) : LibC::Int
  fun contract_vertices = igraph_contract_vertices(graph : T*, mapping : VectorT*, vertex_comb : AttributeCombinationT*) : LibC::Int
  fun transitive_closure_dag = igraph_transitive_closure_dag(graph : T*, closure : T*) : LibC::Int
  fun feedback_arc_set = igraph_feedback_arc_set(graph : T*, result : VectorT*, weights : VectorT*, algo : FasAlgorithmT) : LibC::Int
  enum FasAlgorithmT
    FasExactIp = 0
    FasApproxEades = 1
  end
  fun diversity = igraph_diversity(graph : T*, weights : VectorT*, res : VectorT*, vs : VsT) : LibC::Int
  fun laplacian = igraph_laplacian(graph : T*, res : MatrixT*, sparseres : SparsematT*, normalized : BoolT, weights : VectorT*) : LibC::Int
  fun i_feedback_arc_set_undirected = igraph_i_feedback_arc_set_undirected(graph : T*, result : VectorT*, weights : VectorT*, layering : VectorT*) : LibC::Int
  fun i_feedback_arc_set_eades = igraph_i_feedback_arc_set_eades(graph : T*, result : VectorT*, weights : VectorT*, layering : VectorT*) : LibC::Int
  fun transitivity_undirected = igraph_transitivity_undirected(graph : T*, res : RealT*, mode : TransitivityModeT) : LibC::Int
  enum TransitivityModeT
    TransitivityNan = 0
    TransitivityZero = 1
  end
  fun transitivity_local_undirected = igraph_transitivity_local_undirected(graph : T*, res : VectorT*, vids : VsT, mode : TransitivityModeT) : LibC::Int
  fun transitivity_local_undirected1 = igraph_transitivity_local_undirected1(graph : T*, res : VectorT*, vids : VsT, mode : TransitivityModeT) : LibC::Int
  fun transitivity_local_undirected2 = igraph_transitivity_local_undirected2(graph : T*, res : VectorT*, vids : VsT, mode : TransitivityModeT) : LibC::Int
  fun transitivity_local_undirected4 = igraph_transitivity_local_undirected4(graph : T*, res : VectorT*, vids : VsT, mode : TransitivityModeT) : LibC::Int
  fun transitivity_avglocal_undirected = igraph_transitivity_avglocal_undirected(graph : T*, res : RealT*, mode : TransitivityModeT) : LibC::Int
  fun transitivity_barrat = igraph_transitivity_barrat(graph : T*, res : VectorT*, vids : VsT, weights : VectorT*, mode : TransitivityModeT) : LibC::Int
  fun neighborhood_size = igraph_neighborhood_size(graph : T*, res : VectorT*, vids : VsT, order : IntegerT, mode : NeimodeT) : LibC::Int
  fun neighborhood = igraph_neighborhood(graph : T*, res : VectorPtrT*, vids : VsT, order : IntegerT, mode : NeimodeT) : LibC::Int
  fun neighborhood_graphs = igraph_neighborhood_graphs(graph : T*, res : VectorPtrT*, vids : VsT, order : IntegerT, mode : NeimodeT) : LibC::Int
  fun is_degree_sequence = igraph_is_degree_sequence(out_degrees : VectorT*, in_degrees : VectorT*, res : BoolT*) : LibC::Int
  fun is_graphical_degree_sequence = igraph_is_graphical_degree_sequence(out_degrees : VectorT*, in_degrees : VectorT*, res : BoolT*) : LibC::Int
  fun topological_sorting = igraph_topological_sorting(graph : T*, res : VectorT*, mode : NeimodeT) : LibC::Int
  fun is_dag = igraph_is_dag(graph : T*, res : BoolT*) : LibC::Int
  fun transitive_closure_dag = igraph_transitive_closure_dag(graph : T*, closure : T*) : LibC::Int
  fun permute_vertices = igraph_permute_vertices(graph : T*, res : T*, permutation : VectorT*) : LibC::Int
  fun isomorphic = igraph_isomorphic(graph1 : T*, graph2 : T*, iso : BoolT*) : LibC::Int
  fun subisomorphic = igraph_subisomorphic(graph1 : T*, graph2 : T*, iso : BoolT*) : LibC::Int
  fun subisomorphic_lad = igraph_subisomorphic_lad(pattern : T*, target : T*, domains : VectorPtrT*, iso : BoolT*, map : VectorT*, maps : VectorPtrT*, induced : BoolT, time_limit : LibC::Int) : LibC::Int
  fun isomorphic_vf2 = igraph_isomorphic_vf2(graph1 : T*, graph2 : T*, vertex_color1 : VectorIntT*, vertex_color2 : VectorIntT*, edge_color1 : VectorIntT*, edge_color2 : VectorIntT*, iso : BoolT*, map12 : VectorT*, map21 : VectorT*, node_compat_fn : T*, T*, IntegerT, IntegerT, Void* -> BoolT, edge_compat_fn : T*, T*, IntegerT, IntegerT, Void* -> BoolT, arg : Void*) : LibC::Int
  fun isomorphic_function_vf2 = igraph_isomorphic_function_vf2(graph1 : T*, graph2 : T*, vertex_color1 : VectorIntT*, vertex_color2 : VectorIntT*, edge_color1 : VectorIntT*, edge_color2 : VectorIntT*, map12 : VectorT*, map21 : VectorT*, isohandler_fn : VectorT*, VectorT*, Void* -> BoolT, node_compat_fn : T*, T*, IntegerT, IntegerT, Void* -> BoolT, edge_compat_fn : T*, T*, IntegerT, IntegerT, Void* -> BoolT, arg : Void*) : LibC::Int
  fun count_isomorphisms_vf2 = igraph_count_isomorphisms_vf2(graph1 : T*, graph2 : T*, vertex_color1 : VectorIntT*, vertex_color2 : VectorIntT*, edge_color1 : VectorIntT*, edge_color2 : VectorIntT*, count : IntegerT*, node_compat_fn : T*, T*, IntegerT, IntegerT, Void* -> BoolT, edge_compat_fn : T*, T*, IntegerT, IntegerT, Void* -> BoolT, arg : Void*) : LibC::Int
  fun get_isomorphisms_vf2 = igraph_get_isomorphisms_vf2(graph1 : T*, graph2 : T*, vertex_color1 : VectorIntT*, vertex_color2 : VectorIntT*, edge_color1 : VectorIntT*, edge_color2 : VectorIntT*, maps : VectorPtrT*, node_compat_fn : T*, T*, IntegerT, IntegerT, Void* -> BoolT, edge_compat_fn : T*, T*, IntegerT, IntegerT, Void* -> BoolT, arg : Void*) : LibC::Int
  fun subisomorphic_vf2 = igraph_subisomorphic_vf2(graph1 : T*, graph2 : T*, vertex_color1 : VectorIntT*, vertex_color2 : VectorIntT*, edge_color1 : VectorIntT*, edge_color2 : VectorIntT*, iso : BoolT*, map12 : VectorT*, map21 : VectorT*, node_compat_fn : T*, T*, IntegerT, IntegerT, Void* -> BoolT, edge_compat_fn : T*, T*, IntegerT, IntegerT, Void* -> BoolT, arg : Void*) : LibC::Int
  fun subisomorphic_function_vf2 = igraph_subisomorphic_function_vf2(graph1 : T*, graph2 : T*, vertex_color1 : VectorIntT*, vertex_color2 : VectorIntT*, edge_color1 : VectorIntT*, edge_color2 : VectorIntT*, map12 : VectorT*, map21 : VectorT*, isohandler_fn : VectorT*, VectorT*, Void* -> BoolT, node_compat_fn : T*, T*, IntegerT, IntegerT, Void* -> BoolT, edge_compat_fn : T*, T*, IntegerT, IntegerT, Void* -> BoolT, arg : Void*) : LibC::Int
  fun count_subisomorphisms_vf2 = igraph_count_subisomorphisms_vf2(graph1 : T*, graph2 : T*, vertex_color1 : VectorIntT*, vertex_color2 : VectorIntT*, edge_color1 : VectorIntT*, edge_color2 : VectorIntT*, count : IntegerT*, node_compat_fn : T*, T*, IntegerT, IntegerT, Void* -> BoolT, edge_compat_fn : T*, T*, IntegerT, IntegerT, Void* -> BoolT, arg : Void*) : LibC::Int
  fun get_subisomorphisms_vf2 = igraph_get_subisomorphisms_vf2(graph1 : T*, graph2 : T*, vertex_color1 : VectorIntT*, vertex_color2 : VectorIntT*, edge_color1 : VectorIntT*, edge_color2 : VectorIntT*, maps : VectorPtrT*, node_compat_fn : T*, T*, IntegerT, IntegerT, Void* -> BoolT, edge_compat_fn : T*, T*, IntegerT, IntegerT, Void* -> BoolT, arg : Void*) : LibC::Int
  struct BlissInfoT
    nof_nodes : LibC::ULong
    nof_leaf_nodes : LibC::ULong
    nof_bad_nodes : LibC::ULong
    nof_canupdates : LibC::ULong
    max_level : LibC::ULong
    group_size : LibC::Char*
  end
  BlissF = 0
  BlissFl = 1
  BlissFs = 2
  BlissFm = 3
  BlissFlm = 4
  BlissFsm = 5
  fun canonical_permutation = igraph_canonical_permutation(graph : T*, labeling : VectorT*, sh : BlissShT, info : BlissInfoT*) : LibC::Int
  enum BlissShT
    BlissF = 0
    BlissFl = 1
    BlissFs = 2
    BlissFm = 3
    BlissFlm = 4
    BlissFsm = 5
  end
  fun isomorphic_bliss = igraph_isomorphic_bliss(graph1 : T*, graph2 : T*, iso : BoolT*, map12 : VectorT*, map21 : VectorT*, sh1 : BlissShT, sh2 : BlissShT, info1 : BlissInfoT*, info2 : BlissInfoT*) : LibC::Int
  fun automorphisms = igraph_automorphisms(graph : T*, sh : BlissShT, info : BlissInfoT*) : LibC::Int
  fun isomorphic_34 = igraph_isomorphic_34(graph1 : T*, graph2 : T*, iso : BoolT*) : LibC::Int
  fun isoclass = igraph_isoclass(graph : T*, isoclass : IntegerT*) : LibC::Int
  fun isoclass_subgraph = igraph_isoclass_subgraph(graph : T*, vids : VectorT*, isoclass : IntegerT*) : LibC::Int
  fun isoclass_create = igraph_isoclass_create(graph : T*, size : IntegerT, number : IntegerT, directed : BoolT) : LibC::Int
  fun full_bipartite = igraph_full_bipartite(graph : T*, types : VectorBoolT*, n1 : IntegerT, n2 : IntegerT, directed : BoolT, mode : NeimodeT) : LibC::Int
  fun create_bipartite = igraph_create_bipartite(g : T*, types : VectorBoolT*, edges : VectorT*, directed : BoolT) : LibC::Int
  fun bipartite_projection_size = igraph_bipartite_projection_size(graph : T*, types : VectorBoolT*, vcount1 : IntegerT*, ecount1 : IntegerT*, vcount2 : IntegerT*, ecount2 : IntegerT*) : LibC::Int
  fun bipartite_projection = igraph_bipartite_projection(graph : T*, types : VectorBoolT*, proj1 : T*, proj2 : T*, multiplicity1 : VectorT*, multiplicity2 : VectorT*, probe1 : IntegerT) : LibC::Int
  fun incidence = igraph_incidence(graph : T*, types : VectorBoolT*, incidence : MatrixT*, directed : BoolT, mode : NeimodeT, multiple : BoolT) : LibC::Int
  fun get_incidence = igraph_get_incidence(graph : T*, types : VectorBoolT*, res : MatrixT*, row_ids : VectorT*, col_ids : VectorT*) : LibC::Int
  fun is_bipartite = igraph_is_bipartite(graph : T*, res : BoolT*, type : VectorBoolT*) : LibC::Int
  fun bipartite_game = igraph_bipartite_game(graph : T*, types : VectorBoolT*, type : ErdosRenyiT, n1 : IntegerT, n2 : IntegerT, p : RealT, m : IntegerT, directed : BoolT, mode : NeimodeT) : LibC::Int
  fun bipartite_game_gnp = igraph_bipartite_game_gnp(graph : T*, types : VectorBoolT*, n1 : IntegerT, n2 : IntegerT, p : RealT, directed : BoolT, mode : NeimodeT) : LibC::Int
  fun bipartite_game_gnm = igraph_bipartite_game_gnm(graph : T*, types : VectorBoolT*, n1 : IntegerT, n2 : IntegerT, m : IntegerT, directed : BoolT, mode : NeimodeT) : LibC::Int
  fun maximal_cliques = igraph_maximal_cliques(graph : T*, res : VectorPtrT*, min_size : IntegerT, max_size : IntegerT) : LibC::Int
  fun maximal_cliques_file = igraph_maximal_cliques_file(graph : T*, outfile : File*, min_size : IntegerT, max_size : IntegerT) : LibC::Int
  fun maximal_cliques_count = igraph_maximal_cliques_count(graph : T*, res : IntegerT*, min_size : IntegerT, max_size : IntegerT) : LibC::Int
  fun maximal_cliques_subset = igraph_maximal_cliques_subset(graph : T*, subset : VectorIntT*, res : VectorPtrT*, no : IntegerT*, outfile : File*, min_size : IntegerT, max_size : IntegerT) : LibC::Int
  fun cliques = igraph_cliques(graph : T*, res : VectorPtrT*, min_size : IntegerT, max_size : IntegerT) : LibC::Int
  fun largest_cliques = igraph_largest_cliques(graph : T*, cliques : VectorPtrT*) : LibC::Int
  fun clique_number = igraph_clique_number(graph : T*, no : IntegerT*) : LibC::Int
  fun independent_vertex_sets = igraph_independent_vertex_sets(graph : T*, res : VectorPtrT*, min_size : IntegerT, max_size : IntegerT) : LibC::Int
  fun largest_independent_vertex_sets = igraph_largest_independent_vertex_sets(graph : T*, res : VectorPtrT*) : LibC::Int
  fun maximal_independent_vertex_sets = igraph_maximal_independent_vertex_sets(graph : T*, res : VectorPtrT*) : LibC::Int
  fun independence_number = igraph_independence_number(graph : T*, no : IntegerT*) : LibC::Int
  fun layout_random = igraph_layout_random(graph : T*, res : MatrixT*) : LibC::Int
  fun layout_circle = igraph_layout_circle(graph : T*, res : MatrixT*) : LibC::Int
  fun layout_star = igraph_layout_star(graph : T*, res : MatrixT*, center : IntegerT, order : VectorT*) : LibC::Int
  fun layout_grid = igraph_layout_grid(graph : T*, res : MatrixT*, width : LibC::Long) : LibC::Int
  fun layout_fruchterman_reingold = igraph_layout_fruchterman_reingold(graph : T*, res : MatrixT*, niter : IntegerT, maxdelta : RealT, area : RealT, coolexp : RealT, repulserad : RealT, use_seed : BoolT, weight : VectorT*, minx : VectorT*, maxx : VectorT*, miny : VectorT*, maxy : VectorT*) : LibC::Int
  fun layout_grid_fruchterman_reingold = igraph_layout_grid_fruchterman_reingold(graph : T*, res : MatrixT*, niter : IntegerT, maxdelta : RealT, area : RealT, coolexp : RealT, repulserad : RealT, cellsize : RealT, use_seed : BoolT, weight : VectorT*) : LibC::Int
  fun layout_kamada_kawai = igraph_layout_kamada_kawai(graph : T*, res : MatrixT*, niter : IntegerT, sigma : RealT, initemp : RealT, coolexp : RealT, kkconst : RealT, use_seed : BoolT, minx : VectorT*, maxx : VectorT*, miny : VectorT*, maxy : VectorT*) : LibC::Int
  fun layout_springs = igraph_layout_springs(graph : T*, res : MatrixT*, mass : RealT, equil : RealT, k : RealT, repeqdis : RealT, kfr : RealT, repulse : BoolT) : LibC::Int
  fun layout_lgl = igraph_layout_lgl(graph : T*, res : MatrixT*, maxiter : IntegerT, maxdelta : RealT, area : RealT, coolexp : RealT, repulserad : RealT, cellsize : RealT, root : IntegerT) : LibC::Int
  fun layout_reingold_tilford = igraph_layout_reingold_tilford(graph : T*, res : MatrixT*, mode : NeimodeT, roots : VectorT*, rootlevel : VectorT*) : LibC::Int
  fun layout_reingold_tilford_circular = igraph_layout_reingold_tilford_circular(graph : T*, res : MatrixT*, mode : NeimodeT, roots : VectorT*, rootlevel : VectorT*) : LibC::Int
  fun layout_sugiyama = igraph_layout_sugiyama(graph : T*, res : MatrixT*, extd_graph : T*, extd_to_orig_eids : VectorT*, layers : VectorT*, hgap : RealT, vgap : RealT, maxiter : LibC::Long, weights : VectorT*) : LibC::Int
  fun layout_random_3d = igraph_layout_random_3d(graph : T*, res : MatrixT*) : LibC::Int
  fun layout_sphere = igraph_layout_sphere(graph : T*, res : MatrixT*) : LibC::Int
  fun layout_grid_3d = igraph_layout_grid_3d(graph : T*, res : MatrixT*, width : LibC::Long, height : LibC::Long) : LibC::Int
  fun layout_fruchterman_reingold_3d = igraph_layout_fruchterman_reingold_3d(graph : T*, res : MatrixT*, niter : IntegerT, maxdelta : RealT, volume : RealT, coolexp : RealT, repulserad : RealT, use_seed : BoolT, weight : VectorT*, minx : VectorT*, maxx : VectorT*, miny : VectorT*, maxy : VectorT*, minz : VectorT*, maxz : VectorT*) : LibC::Int
  fun layout_kamada_kawai_3d = igraph_layout_kamada_kawai_3d(graph : T*, res : MatrixT*, niter : IntegerT, sigma : RealT, initemp : RealT, coolexp : RealT, kkconst : RealT, use_seed : BoolT, fixz : BoolT, minx : VectorT*, maxx : VectorT*, miny : VectorT*, maxy : VectorT*, minz : VectorT*, maxz : VectorT*) : LibC::Int
  fun layout_graphopt = igraph_layout_graphopt(graph : T*, res : MatrixT*, niter : IntegerT, node_charge : RealT, node_mass : RealT, spring_length : RealT, spring_constant : RealT, max_sa_movement : RealT, use_seed : BoolT) : LibC::Int
  fun layout_mds = igraph_layout_mds(graph : T*, res : MatrixT*, dist : MatrixT*, dim : LibC::Long, options : ArpackOptionsT*) : LibC::Int
  fun layout_bipartite = igraph_layout_bipartite(graph : T*, types : VectorBoolT*, res : MatrixT*, hgap : RealT, vgap : RealT, maxiter : LibC::Long) : LibC::Int
  struct LayoutDrlOptionsT
    edge_cut : RealT
    init_iterations : IntegerT
    init_temperature : RealT
    init_attraction : RealT
    init_damping_mult : RealT
    liquid_iterations : IntegerT
    liquid_temperature : RealT
    liquid_attraction : RealT
    liquid_damping_mult : RealT
    expansion_iterations : IntegerT
    expansion_temperature : RealT
    expansion_attraction : RealT
    expansion_damping_mult : RealT
    cooldown_iterations : IntegerT
    cooldown_temperature : RealT
    cooldown_attraction : RealT
    cooldown_damping_mult : RealT
    crunch_iterations : IntegerT
    crunch_temperature : RealT
    crunch_attraction : RealT
    crunch_damping_mult : RealT
    simmer_iterations : IntegerT
    simmer_temperature : RealT
    simmer_attraction : RealT
    simmer_damping_mult : RealT
  end
  LayoutDrlDefault = 0
  LayoutDrlCoarsen = 1
  LayoutDrlCoarsest = 2
  LayoutDrlRefine = 3
  LayoutDrlFinal = 4
  fun layout_drl_options_init = igraph_layout_drl_options_init(options : LayoutDrlOptionsT*, templ : LayoutDrlDefaultT) : LibC::Int
  enum LayoutDrlDefaultT
    LayoutDrlDefault = 0
    LayoutDrlCoarsen = 1
    LayoutDrlCoarsest = 2
    LayoutDrlRefine = 3
    LayoutDrlFinal = 4
  end
  fun layout_drl = igraph_layout_drl(graph : T*, res : MatrixT*, use_seed : BoolT, options : LayoutDrlOptionsT*, weights : VectorT*, fixed : VectorBoolT*) : LibC::Int
  fun layout_drl_3d = igraph_layout_drl_3d(graph : T*, res : MatrixT*, use_seed : BoolT, options : LayoutDrlOptionsT*, weights : VectorT*, fixed : VectorBoolT*) : LibC::Int
  fun layout_merge_dla = igraph_layout_merge_dla(graphs : VectorPtrT*, coords : VectorPtrT*, res : MatrixT*) : LibC::Int
  fun bfs = igraph_bfs(graph : T*, root : IntegerT, roots : VectorT*, mode : NeimodeT, unreachable : BoolT, restricted : VectorT*, order : VectorT*, rank : VectorT*, father : VectorT*, pred : VectorT*, succ : VectorT*, dist : VectorT*, callback : T*, IntegerT, IntegerT, IntegerT, IntegerT, IntegerT, Void* -> BoolT, extra : Void*) : LibC::Int
  fun i_bfs = igraph_i_bfs(graph : T*, vid : IntegerT, mode : NeimodeT, vids : VectorT*, layers : VectorT*, parents : VectorT*) : LibC::Int
  fun dfs = igraph_dfs(graph : T*, root : IntegerT, mode : NeimodeT, unreachable : BoolT, order : VectorT*, order_out : VectorT*, father : VectorT*, dist : VectorT*, in_callback : T*, IntegerT, IntegerT, Void* -> BoolT, out_callback : T*, IntegerT, IntegerT, Void* -> BoolT, extra : Void*) : LibC::Int
  fun coreness = igraph_coreness(graph : T*, cores : VectorT*, mode : NeimodeT) : LibC::Int
  fun community_optimal_modularity = igraph_community_optimal_modularity(graph : T*, modularity : RealT*, membership : VectorT*, weights : VectorT*) : LibC::Int
  fun community_spinglass = igraph_community_spinglass(graph : T*, weights : VectorT*, modularity : RealT*, temperature : RealT*, membership : VectorT*, csize : VectorT*, spins : IntegerT, parupdate : BoolT, starttemp : RealT, stoptemp : RealT, coolfact : RealT, update_rule : SpincommUpdateT, gamma : RealT, implementation : SpinglassImplementationT, lambda : RealT) : LibC::Int
  enum SpincommUpdateT
    SpincommUpdateSimple = 0
    SpincommUpdateConfig = 1
  end
  enum SpinglassImplementationT
    SpincommImpOrig = 0
    SpincommImpNeg = 1
  end
  fun community_spinglass_single = igraph_community_spinglass_single(graph : T*, weights : VectorT*, vertex : IntegerT, community : VectorT*, cohesion : RealT*, adhesion : RealT*, inner_links : IntegerT*, outer_links : IntegerT*, spins : IntegerT, update_rule : SpincommUpdateT, gamma : RealT) : LibC::Int
  fun community_walktrap = igraph_community_walktrap(graph : T*, weights : VectorT*, steps : LibC::Int, merges : MatrixT*, modularity : VectorT*, membership : VectorT*) : LibC::Int
  fun community_infomap = igraph_community_infomap(graph : T*, e_weights : VectorT*, v_weights : VectorT*, nb_trials : LibC::Int, membership : VectorT*, codelength : RealT*) : LibC::Int
  fun community_edge_betweenness = igraph_community_edge_betweenness(graph : T*, result : VectorT*, edge_betweenness : VectorT*, merges : MatrixT*, bridges : VectorT*, modularity : VectorT*, membership : VectorT*, directed : BoolT, weights : VectorT*) : LibC::Int
  fun community_eb_get_merges = igraph_community_eb_get_merges(graph : T*, edges : VectorT*, weights : VectorT*, merges : MatrixT*, bridges : VectorT*, modularity : VectorT*, membership : VectorT*) : LibC::Int
  fun community_fastgreedy = igraph_community_fastgreedy(graph : T*, weights : VectorT*, merges : MatrixT*, modularity : VectorT*, membership : VectorT*) : LibC::Int
  fun community_to_membership = igraph_community_to_membership(merges : MatrixT*, nodes : IntegerT, steps : IntegerT, membership : VectorT*, csize : VectorT*) : LibC::Int
  fun le_community_to_membership = igraph_le_community_to_membership(merges : MatrixT*, steps : IntegerT, membership : VectorT*, csize : VectorT*) : LibC::Int
  fun modularity = igraph_modularity(graph : T*, membership : VectorT*, modularity : RealT*, weights : VectorT*) : LibC::Int
  fun modularity_matrix = igraph_modularity_matrix(graph : T*, membership : VectorT*, modmat : MatrixT*, weights : VectorT*) : LibC::Int
  fun reindex_membership = igraph_reindex_membership(membership : VectorT*, new_to_old : VectorT*) : LibC::Int
  LevcHistSplit = 1
  LevcHistFailed = 2
  LevcHistStartFull = 3
  LevcHistStartGiven = 4
  fun community_leading_eigenvector = igraph_community_leading_eigenvector(graph : T*, weights : VectorT*, merges : MatrixT*, membership : VectorT*, steps : IntegerT, options : ArpackOptionsT*, modularity : RealT*, start : BoolT, eigenvalues : VectorT*, eigenvectors : VectorPtrT*, history : VectorT*, callback : VectorT*, LibC::Long, RealT, VectorT*, RealT*, RealT*, LibC::Int, Void* -> LibC::Int, Void*, Void* -> LibC::Int, callback_extra : Void*) : LibC::Int
  fun community_label_propagation = igraph_community_label_propagation(graph : T*, membership : VectorT*, weights : VectorT*, initial : VectorT*, fixed : VectorBoolT*, modularity : RealT*) : LibC::Int
  fun community_multilevel = igraph_community_multilevel(graph : T*, weights : VectorT*, membership : VectorT*, memberships : MatrixT*, modularity : VectorT*) : LibC::Int
  fun compare_communities = igraph_compare_communities(comm1 : VectorT*, comm2 : VectorT*, result : RealT*, method : CommunityComparisonT) : LibC::Int
  enum CommunityComparisonT
    CommcmpVi = 0
    CommcmpNmi = 1
    CommcmpSplitJoin = 2
    CommcmpRand = 3
    CommcmpAdjustedRand = 4
  end
  fun split_join_distance = igraph_split_join_distance(comm1 : VectorT*, comm2 : VectorT*, distance12 : IntegerT*, distance21 : IntegerT*) : LibC::Int
  fun get_adjacency = igraph_get_adjacency(graph : T*, res : MatrixT*, type : GetAdjacencyT, eids : BoolT) : LibC::Int
  enum GetAdjacencyT
    GetAdjacencyUpper = 0
    GetAdjacencyLower = 1
    GetAdjacencyBoth = 2
  end
  fun get_adjacency_sparse = igraph_get_adjacency_sparse(graph : T*, res : SpmatrixT*, type : GetAdjacencyT) : LibC::Int
  fun get_stochastic = igraph_get_stochastic(graph : T*, matrix : MatrixT*, column_wise : BoolT) : LibC::Int
  fun get_stochastic_sparsemat = igraph_get_stochastic_sparsemat(graph : T*, sparsemat : SparsematT*, column_wise : BoolT) : LibC::Int
  fun get_edgelist = igraph_get_edgelist(graph : T*, res : VectorT*, bycol : BoolT) : LibC::Int
  fun to_directed = igraph_to_directed(graph : T*, flags : ToDirectedT) : LibC::Int
  enum ToDirectedT
    ToDirectedArbitrary = 0
    ToDirectedMutual = 1
  end
  fun to_undirected = igraph_to_undirected(graph : T*, flags : ToUndirectedT, edge_comb : AttributeCombinationT*) : LibC::Int
  enum ToUndirectedT
    ToUndirectedEach = 0
    ToUndirectedCollapse = 1
    ToUndirectedMutual = 2
  end
  fun read_graph_edgelist = igraph_read_graph_edgelist(graph : T*, instream : File*, n : IntegerT, directed : BoolT) : LibC::Int
  fun read_graph_ncol = igraph_read_graph_ncol(graph : T*, instream : File*, predefnames : StrvectorT*, names : BoolT, weights : AddWeightsT, directed : BoolT) : LibC::Int
  enum AddWeightsT
    AddWeightsNo = 0
    AddWeightsYes = 1
    AddWeightsIfPresent = 2
  end
  fun read_graph_lgl = igraph_read_graph_lgl(graph : T*, instream : File*, names : BoolT, weights : AddWeightsT, directed : BoolT) : LibC::Int
  fun read_graph_pajek = igraph_read_graph_pajek(graph : T*, instream : File*) : LibC::Int
  fun read_graph_graphml = igraph_read_graph_graphml(graph : T*, instream : File*, index : LibC::Int) : LibC::Int
  fun read_graph_dimacs = igraph_read_graph_dimacs(graph : T*, instream : File*, problem : StrvectorT*, label : VectorT*, source : IntegerT*, target : IntegerT*, capacity : VectorT*, directed : BoolT) : LibC::Int
  fun read_graph_graphdb = igraph_read_graph_graphdb(graph : T*, instream : File*, directed : BoolT) : LibC::Int
  fun read_graph_gml = igraph_read_graph_gml(graph : T*, instream : File*) : LibC::Int
  fun read_graph_dl = igraph_read_graph_dl(graph : T*, instream : File*, directed : BoolT) : LibC::Int
  fun write_graph_edgelist = igraph_write_graph_edgelist(graph : T*, outstream : File*) : LibC::Int
  fun write_graph_ncol = igraph_write_graph_ncol(graph : T*, outstream : File*, names : LibC::Char*, weights : LibC::Char*) : LibC::Int
  fun write_graph_lgl = igraph_write_graph_lgl(graph : T*, outstream : File*, names : LibC::Char*, weights : LibC::Char*, isolates : BoolT) : LibC::Int
  fun write_graph_graphml = igraph_write_graph_graphml(graph : T*, outstream : File*, prefixattr : BoolT) : LibC::Int
  fun write_graph_pajek = igraph_write_graph_pajek(graph : T*, outstream : File*) : LibC::Int
  fun write_graph_dimacs = igraph_write_graph_dimacs(graph : T*, outstream : File*, source : LibC::Long, target : LibC::Long, capacity : VectorT*) : LibC::Int
  fun write_graph_gml = igraph_write_graph_gml(graph : T*, outstream : File*, id : VectorT*, creator : LibC::Char*) : LibC::Int
  fun write_graph_dot = igraph_write_graph_dot(graph : T*, outstream : File*) : LibC::Int
  fun write_graph_leda = igraph_write_graph_leda(graph : T*, outstream : File*, vertex_attr_name : LibC::Char*, edge_attr_name : LibC::Char*) : LibC::Int
  fun motifs_randesu = igraph_motifs_randesu(graph : T*, hist : VectorT*, size : LibC::Int, cut_prob : VectorT*) : LibC::Int
  fun motifs_randesu_callback = igraph_motifs_randesu_callback(graph : T*, size : LibC::Int, cut_prob : VectorT*, callback : T*, VectorT*, LibC::Int, Void* -> BoolT, extra : Void*) : LibC::Int
  fun motifs_randesu_estimate = igraph_motifs_randesu_estimate(graph : T*, est : IntegerT*, size : LibC::Int, cut_prob : VectorT*, sample_size : IntegerT, sample : VectorT*) : LibC::Int
  fun motifs_randesu_no = igraph_motifs_randesu_no(graph : T*, no : IntegerT*, size : LibC::Int, cut_prob : VectorT*) : LibC::Int
  fun dyad_census = igraph_dyad_census(graph : T*, mut : IntegerT*, asym : IntegerT*, null : IntegerT*) : LibC::Int
  fun triad_census = igraph_triad_census(igraph : T*, res : VectorT*) : LibC::Int
  fun triad_census_24 = igraph_triad_census_24(graph : T*, res2 : IntegerT*, res4 : IntegerT*) : LibC::Int
  fun adjacent_triangles = igraph_adjacent_triangles(graph : T*, res : VectorT*, vids : VsT) : LibC::Int
  fun disjoint_union = igraph_disjoint_union(res : T*, left : T*, right : T*) : LibC::Int
  fun disjoint_union_many = igraph_disjoint_union_many(res : T*, graphs : VectorPtrT*) : LibC::Int
  fun union = igraph_union(res : T*, left : T*, right : T*, edge_map1 : VectorT*, edge_map2 : VectorT*) : LibC::Int
  fun union_many = igraph_union_many(res : T*, graphs : VectorPtrT*, edgemaps : VectorPtrT*) : LibC::Int
  fun intersection = igraph_intersection(res : T*, left : T*, right : T*, edge_map1 : VectorT*, edge_map2 : VectorT*) : LibC::Int
  fun intersection_many = igraph_intersection_many(res : T*, graphs : VectorPtrT*, edgemaps : VectorPtrT*) : LibC::Int
  fun difference = igraph_difference(res : T*, orig : T*, sub : T*) : LibC::Int
  fun complementer = igraph_complementer(res : T*, graph : T*, loops : BoolT) : LibC::Int
  fun compose = igraph_compose(res : T*, g1 : T*, g2 : T*, edge_map1 : VectorT*, edge_map2 : VectorT*) : LibC::Int
  fun maxflow = igraph_maxflow(graph : T*, value : RealT*, flow : VectorT*, cut : VectorT*, partition : VectorT*, partition2 : VectorT*, source : IntegerT, target : IntegerT, capacity : VectorT*, stats : MaxflowStatsT*) : LibC::Int
  struct MaxflowStatsT
    nopush : LibC::Int
    norelabel : LibC::Int
    nogap : LibC::Int
    nogapnodes : LibC::Int
    nobfs : LibC::Int
  end
  fun maxflow_value = igraph_maxflow_value(graph : T*, value : RealT*, source : IntegerT, target : IntegerT, capacity : VectorT*, stats : MaxflowStatsT*) : LibC::Int
  fun st_mincut = igraph_st_mincut(graph : T*, value : RealT*, cut : VectorT*, partition : VectorT*, partition2 : VectorT*, source : IntegerT, target : IntegerT, capacity : VectorT*) : LibC::Int
  fun st_mincut_value = igraph_st_mincut_value(graph : T*, res : RealT*, source : IntegerT, target : IntegerT, capacity : VectorT*) : LibC::Int
  fun mincut_value = igraph_mincut_value(graph : T*, res : RealT*, capacity : VectorT*) : LibC::Int
  fun mincut = igraph_mincut(graph : T*, value : RealT*, partition : VectorT*, partition2 : VectorT*, cut : VectorT*, capacity : VectorT*) : LibC::Int
  fun st_vertex_connectivity = igraph_st_vertex_connectivity(graph : T*, res : IntegerT*, source : IntegerT, target : IntegerT, neighbors : VconnNeiT) : LibC::Int
  enum VconnNeiT
    VconnNeiError = 0
    VconnNeiNumberOfNodes = 1
    VconnNeiIgnore = 2
    VconnNeiNegative = 3
  end
  fun vertex_connectivity = igraph_vertex_connectivity(graph : T*, res : IntegerT*, checks : BoolT) : LibC::Int
  fun st_edge_connectivity = igraph_st_edge_connectivity(graph : T*, res : IntegerT*, source : IntegerT, target : IntegerT) : LibC::Int
  fun edge_connectivity = igraph_edge_connectivity(graph : T*, res : IntegerT*, checks : BoolT) : LibC::Int
  fun edge_disjoint_paths = igraph_edge_disjoint_paths(graph : T*, res : IntegerT*, source : IntegerT, target : IntegerT) : LibC::Int
  fun vertex_disjoint_paths = igraph_vertex_disjoint_paths(graph : T*, res : IntegerT*, source : IntegerT, target : IntegerT) : LibC::Int
  fun adhesion = igraph_adhesion(graph : T*, res : IntegerT*, checks : BoolT) : LibC::Int
  fun cohesion = igraph_cohesion(graph : T*, res : IntegerT*, checks : BoolT) : LibC::Int
  fun even_tarjan_reduction = igraph_even_tarjan_reduction(graph : T*, graphbar : T*, capacity : VectorT*) : LibC::Int
  fun residual_graph = igraph_residual_graph(graph : T*, capacity : VectorT*, residual : T*, residual_capacity : VectorT*, flow : VectorT*) : LibC::Int
  fun i_residual_graph = igraph_i_residual_graph(graph : T*, capacity : VectorT*, residual : T*, residual_capacity : VectorT*, flow : VectorT*, tmp : VectorT*) : LibC::Int
  fun i_reverse_residual_graph = igraph_i_reverse_residual_graph(graph : T*, capacity : VectorT*, residual : T*, flow : VectorT*, tmp : VectorT*) : LibC::Int
  fun reverse_residual_graph = igraph_reverse_residual_graph(graph : T*, capacity : VectorT*, residual : T*, flow : VectorT*) : LibC::Int
  fun dominator_tree = igraph_dominator_tree(graph : T*, root : IntegerT, dom : VectorT*, domtree : T*, leftout : VectorT*, mode : NeimodeT) : LibC::Int
  fun all_st_cuts = igraph_all_st_cuts(graph : T*, cuts : VectorPtrT*, partition1s : VectorPtrT*, source : IntegerT, target : IntegerT) : LibC::Int
  fun all_st_mincuts = igraph_all_st_mincuts(graph : T*, value : RealT*, cuts : VectorPtrT*, partition1s : VectorPtrT*, source : IntegerT, target : IntegerT, capacity : VectorT*) : LibC::Int
  fun gomory_hu_tree = igraph_gomory_hu_tree(graph : T*, tree : T*, flows : VectorT*, capacity : VectorT*) : LibC::Int
  struct AdjlistT
    length : IntegerT
    adjs : VectorIntT*
  end
  fun adjlist_init = igraph_adjlist_init(graph : T*, al : AdjlistT*, mode : NeimodeT) : LibC::Int
  fun adjlist_init_empty = igraph_adjlist_init_empty(al : AdjlistT*, no_of_nodes : IntegerT) : LibC::Int
  fun adjlist_size = igraph_adjlist_size(al : AdjlistT*) : IntegerT
  fun adjlist_init_complementer = igraph_adjlist_init_complementer(graph : T*, al : AdjlistT*, mode : NeimodeT, loops : BoolT) : LibC::Int
  fun adjlist_destroy = igraph_adjlist_destroy(al : AdjlistT*)
  fun adjlist_clear = igraph_adjlist_clear(al : AdjlistT*)
  fun adjlist_sort = igraph_adjlist_sort(al : AdjlistT*)
  fun adjlist_simplify = igraph_adjlist_simplify(al : AdjlistT*) : LibC::Int
  fun adjlist_remove_duplicate = igraph_adjlist_remove_duplicate(graph : T*, al : AdjlistT*) : LibC::Int
  fun adjlist_print = igraph_adjlist_print(al : AdjlistT*) : LibC::Int
  fun adjlist_fprint = igraph_adjlist_fprint(al : AdjlistT*, outfile : File*) : LibC::Int
  fun adjlist = igraph_adjlist(graph : T*, adjlist : AdjlistT*, mode : NeimodeT, duplicate : BoolT) : LibC::Int
  struct InclistT
    length : IntegerT
    incs : VectorT*
  end
  fun inclist_init = igraph_inclist_init(graph : T*, il : InclistT*, mode : NeimodeT) : LibC::Int
  fun inclist_init_empty = igraph_inclist_init_empty(il : InclistT*, n : IntegerT) : LibC::Int
  fun inclist_destroy = igraph_inclist_destroy(il : InclistT*)
  fun inclist_clear = igraph_inclist_clear(il : InclistT*)
  fun inclist_remove_duplicate = igraph_inclist_remove_duplicate(graph : T*, il : InclistT*) : LibC::Int
  fun inclist_print = igraph_inclist_print(il : InclistT*) : LibC::Int
  fun inclist_fprint = igraph_inclist_fprint(il : InclistT*, outfile : File*) : LibC::Int
  struct LazyAdjlistT
    graph : T*
    length : IntegerT
    adjs : VectorT**
    mode : NeimodeT
    simplify : LazyAdlistSimplifyT
  end
  enum LazyAdlistSimplifyT
    DontSimplify = 0
    Simplify = 1
  end
  fun lazy_adjlist_init = igraph_lazy_adjlist_init(graph : T*, al : LazyAdjlistT*, mode : NeimodeT, simplify : LazyAdlistSimplifyT) : LibC::Int
  fun lazy_adjlist_destroy = igraph_lazy_adjlist_destroy(al : LazyAdjlistT*)
  fun lazy_adjlist_clear = igraph_lazy_adjlist_clear(al : LazyAdjlistT*)
  fun lazy_adjlist_get_real = igraph_lazy_adjlist_get_real(al : LazyAdjlistT*, no : IntegerT) : VectorT*
  struct LazyInclistT
    graph : T*
    length : IntegerT
    incs : VectorT**
    mode : NeimodeT
  end
  fun lazy_inclist_init = igraph_lazy_inclist_init(graph : T*, il : LazyInclistT*, mode : NeimodeT) : LibC::Int
  fun lazy_inclist_destroy = igraph_lazy_inclist_destroy(il : LazyInclistT*)
  fun lazy_inclist_clear = igraph_lazy_inclist_clear(il : LazyInclistT*)
  fun lazy_inclist_get_real = igraph_lazy_inclist_get_real(al : LazyInclistT*, no : IntegerT) : VectorT*
  fun adjedgelist_init = igraph_adjedgelist_init(graph : T*, il : InclistT*, mode : NeimodeT) : LibC::Int
  fun adjedgelist_destroy = igraph_adjedgelist_destroy(il : InclistT*)
  fun adjedgelist_remove_duplicate = igraph_adjedgelist_remove_duplicate(graph : T*, il : InclistT*) : LibC::Int
  fun adjedgelist_print = igraph_adjedgelist_print(il : InclistT*, outfile : File*) : LibC::Int
  fun lazy_adjedgelist_init = igraph_lazy_adjedgelist_init(graph : T*, il : LazyInclistT*, mode : NeimodeT) : LibC::Int
  fun lazy_adjedgelist_destroy = igraph_lazy_adjedgelist_destroy(il : LazyInclistT*)
  fun lazy_adjedgelist_get_real = igraph_lazy_adjedgelist_get_real(al : LazyInclistT*, no : IntegerT) : VectorT*
  fun evolver_d = igraph_evolver_d(graph : T*, nodes : IntegerT, kernel : VectorT*, outseq : VectorT*, outdist : VectorT*, m : IntegerT, directed : BoolT) : LibC::Int
  fun revolver_d = igraph_revolver_d(graph : T*, niter : IntegerT, kernel : VectorT*, sd : VectorT*, norm : VectorT*, cites : VectorT*, expected : VectorT*, logprob : RealT*, lognull : RealT*, logmax : RealT*, debug : VectorT*, debugres : VectorPtrT*) : LibC::Int
  fun revolver_mes_d = igraph_revolver_mes_d(graph : T*, kernel : VectorT*, sd : VectorT*, norm : VectorT*, cites : VectorT*, debug : VectorT*, debugres : VectorPtrT*, logmax : RealT*, st : VectorT*, pmaxind : IntegerT) : LibC::Int
  fun revolver_st_d = igraph_revolver_st_d(graph : T*, st : VectorT*, kernel : VectorT*) : LibC::Int
  fun revolver_exp_d = igraph_revolver_exp_d(graphm : T*, expected : VectorT*, kernel : VectorT*, st : VectorT*, pmaxind : IntegerT) : LibC::Int
  fun revolver_error_d = igraph_revolver_error_d(graph : T*, kernel : VectorT*, st : VectorT*, maxind : IntegerT, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_error2_d = igraph_revolver_error2_d(graph : T*, kernel : VectorT*, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_ad = igraph_revolver_ad(graph : T*, niter : IntegerT, agebins : IntegerT, kernel : MatrixT*, sd : MatrixT*, norm : MatrixT*, cites : MatrixT*, expected : MatrixT*, logprob : RealT*, lognull : RealT*, logmax : RealT*, debug : MatrixT*, debugres : VectorPtrT*) : LibC::Int
  fun revolver_mes_ad = igraph_revolver_mes_ad(graph : T*, kernel : MatrixT*, sd : MatrixT*, norm : MatrixT*, cites : MatrixT*, debug : MatrixT*, debugres : VectorPtrT*, logmax : RealT*, st : VectorT*, pmaxind : IntegerT, agebins : IntegerT) : LibC::Int
  fun revolver_st_ad = igraph_revolver_st_ad(graph : T*, st : VectorT*, kernel : MatrixT*) : LibC::Int
  fun revolver_exp_ad = igraph_revolver_exp_ad(graph : T*, expected : MatrixT*, kernel : MatrixT*, st : VectorT*, pmaxind : IntegerT, agebins : IntegerT) : LibC::Int
  fun revolver_error_ad = igraph_revolver_error_ad(graph : T*, kernel : MatrixT*, st : VectorT*, pmaxind : IntegerT, pagebins : IntegerT, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_error2_ad = igraph_revolver_error2_ad(graph : T*, kernel : MatrixT*, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_ade = igraph_revolver_ade(graph : T*, niter : IntegerT, agebins : IntegerT, cats : VectorT*, kernel : Array3T*, sd : Array3T*, norm : Array3T*, cites : Array3T*, expected : Array3T*, logprob : RealT*, lognull : RealT*, logmax : RealT*, debug : MatrixT*, debugres : VectorPtrT*) : LibC::Int
  fun revolver_mes_ade = igraph_revolver_mes_ade(graph : T*, kernel : Array3T*, sd : Array3T*, norm : Array3T*, cites : Array3T*, debug : MatrixT*, debugres : VectorPtrT*, logmax : RealT*, st : VectorT*, cats : VectorT*, pnocats : IntegerT, pmaxind : IntegerT, pagebind : IntegerT) : LibC::Int
  fun revolver_st_ade = igraph_revolver_st_ade(graph : T*, st : VectorT*, kernel : Array3T*, cats : VectorT*) : LibC::Int
  fun revolver_exp_ade = igraph_revolver_exp_ade(graph : T*, expected : Array3T*, kernel : Array3T*, st : VectorT*, cats : VectorT*, nocats : IntegerT, maxdegree : IntegerT, agebins : IntegerT) : LibC::Int
  fun revolver_error_ade = igraph_revolver_error_ade(graph : T*, kernel : Array3T*, st : VectorT*, cats : VectorT*, pnocats : IntegerT, pmaxdegree : IntegerT, pagebins : IntegerT, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_error2_ade = igraph_revolver_error2_ade(graph : T*, kernel : Array3T*, cats : VectorT*, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_e = igraph_revolver_e(graph : T*, niter : IntegerT, cats : VectorT*, kernel : VectorT*, st : VectorT*, sd : VectorT*, norm : VectorT*, cites : VectorT*, expected : VectorT*, logprob : RealT*, lognull : RealT*, logmax : RealT*, debug : VectorT*, debugres : VectorPtrT*) : LibC::Int
  fun revolver_mes_e = igraph_revolver_mes_e(graph : T*, kernel : VectorT*, sd : VectorT*, norm : VectorT*, cites : VectorT*, debug : VectorT*, debugres : VectorPtrT*, logmax : RealT*, st : VectorT*, cats : VectorT*, pnocats : IntegerT) : LibC::Int
  fun revolver_st_e = igraph_revolver_st_e(graph : T*, st : VectorT*, kernel : VectorT*, cats : VectorT*) : LibC::Int
  fun revolver_exp_e = igraph_revolver_exp_e(graph : T*, expected : VectorT*, kernel : VectorT*, st : VectorT*, cats : VectorT*, pnocats : IntegerT) : LibC::Int
  fun revolver_error_e = igraph_revolver_error_e(graph : T*, kernel : VectorT*, st : VectorT*, cats : VectorT*, pnocats : IntegerT, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_error2_e = igraph_revolver_error2_e(graph : T*, kernel : VectorT*, cats : VectorT*, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_de = igraph_revolver_de(graph : T*, niter : IntegerT, cats : VectorT*, kernel : MatrixT*, sd : MatrixT*, norm : MatrixT*, cites : MatrixT*, expected : MatrixT*, logprob : RealT*, lognull : RealT*, logmax : RealT*, debug : MatrixT*, debugres : VectorPtrT*) : LibC::Int
  fun revolver_mes_de = igraph_revolver_mes_de(graph : T*, kernel : MatrixT*, sd : MatrixT*, norm : MatrixT*, cites : MatrixT*, debug : MatrixT*, debugres : VectorPtrT*, logmax : RealT*, st : VectorT*, cats : VectorT*, pnocats : IntegerT, pmaxind : IntegerT) : LibC::Int
  fun revolver_st_de = igraph_revolver_st_de(graph : T*, st : VectorT*, kernel : MatrixT*, cats : VectorT*) : LibC::Int
  fun revolver_exp_de = igraph_revolver_exp_de(graph : T*, expected : MatrixT*, kernel : MatrixT*, st : VectorT*, cats : VectorT*, pnocats : IntegerT, pmaxind : IntegerT) : LibC::Int
  fun revolver_error_de = igraph_revolver_error_de(graph : T*, kernel : MatrixT*, st : VectorT*, cats : VectorT*, pnocats : IntegerT, pmaxind : IntegerT, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_error2_de = igraph_revolver_error2_de(graph : T*, kernel : MatrixT*, cats : VectorT*, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_l = igraph_revolver_l(graph : T*, niter : IntegerT, agebins : IntegerT, kernel : VectorT*, sd : VectorT*, norm : VectorT*, cites : VectorT*, expected : VectorT*, logprob : RealT*, lognull : RealT*, logmax : RealT*, debug : VectorT*, debugres : VectorPtrT*) : LibC::Int
  fun revolver_mes_l = igraph_revolver_mes_l(graph : T*, kernel : VectorT*, sd : VectorT*, norm : VectorT*, cites : VectorT*, debug : VectorT*, debugres : VectorPtrT*, logmax : RealT*, st : VectorT*, pagebins : IntegerT) : LibC::Int
  fun revolver_st_l = igraph_revolver_st_l(graph : T*, st : VectorT*, kernel : VectorT*) : LibC::Int
  fun revolver_exp_l = igraph_revolver_exp_l(graph : T*, expected : VectorT*, kernel : VectorT*, st : VectorT*, pagebins : IntegerT) : LibC::Int
  fun revolver_error_l = igraph_revolver_error_l(graph : T*, kernel : VectorT*, st : VectorT*, pagebins : IntegerT, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_error2_l = igraph_revolver_error2_l(graph : T*, kernel : VectorT*, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_dl = igraph_revolver_dl(graph : T*, niter : IntegerT, agebins : IntegerT, kernel : MatrixT*, sd : MatrixT*, norm : MatrixT*, cites : MatrixT*, expected : MatrixT*, logprob : RealT*, lognull : RealT*, logmax : RealT*, debug : MatrixT*, debugres : VectorPtrT*) : LibC::Int
  fun revolver_mes_dl = igraph_revolver_mes_dl(graph : T*, kernel : MatrixT*, sd : MatrixT*, norm : MatrixT*, cites : MatrixT*, debug : MatrixT*, debugres : VectorPtrT*, logmax : RealT*, st : VectorT*, pmaxind : IntegerT, pagebins : IntegerT) : LibC::Int
  fun revolver_st_dl = igraph_revolver_st_dl(graph : T*, st : VectorT*, kernel : MatrixT*) : LibC::Int
  fun revolver_exp_dl = igraph_revolver_exp_dl(graph : T*, expected : MatrixT*, kernel : MatrixT*, st : VectorT*, pmaxind : IntegerT, pagebins : IntegerT) : LibC::Int
  fun revolver_error_dl = igraph_revolver_error_dl(graph : T*, kernel : MatrixT*, st : VectorT*, pagebins : IntegerT, pmaxind : IntegerT, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_error2_dl = igraph_revolver_error2_dl(graph : T*, kernel : MatrixT*, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_el = igraph_revolver_el(graph : T*, niter : IntegerT, cats : VectorT*, agebins : IntegerT, kernel : MatrixT*, sd : MatrixT*, norm : MatrixT*, cites : MatrixT*, expected : MatrixT*, logprob : RealT*, lognull : RealT*, logmax : RealT*, debug : MatrixT*, debugres : VectorPtrT*) : LibC::Int
  fun revolver_mes_el = igraph_revolver_mes_el(graph : T*, kernel : MatrixT*, sd : MatrixT*, norm : MatrixT*, cites : MatrixT*, debug : MatrixT*, debugres : VectorPtrT*, logmax : RealT*, st : VectorT*, cats : VectorT*, pnocats : IntegerT, pagebins : IntegerT) : LibC::Int
  fun revolver_st_el = igraph_revolver_st_el(graph : T*, st : VectorT*, kernel : MatrixT*, cats : VectorT*) : LibC::Int
  fun revolver_exp_el = igraph_revolver_exp_el(graph : T*, expected : MatrixT*, kernel : MatrixT*, st : VectorT*, cats : VectorT*, pnocats : IntegerT, pagebins : IntegerT) : LibC::Int
  fun revolver_error_el = igraph_revolver_error_el(graph : T*, kernel : MatrixT*, st : VectorT*, cats : VectorT*, pnocats : IntegerT, pagebins : IntegerT, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_error2_el = igraph_revolver_error2_el(graph : T*, kernel : MatrixT*, cats : VectorT*, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_r = igraph_revolver_r(graph : T*, niter : IntegerT, window : IntegerT, kernel : VectorT*, sd : VectorT*, norm : VectorT*, cites : VectorT*, expected : VectorT*, logprob : RealT*, lognull : RealT*, logmax : RealT*, debug : VectorT*, debugres : VectorPtrT*) : LibC::Int
  fun revolver_mes_r = igraph_revolver_mes_r(graph : T*, kernel : VectorT*, sd : VectorT*, norm : VectorT*, cites : VectorT*, debug : VectorT*, debugres : VectorPtrT*, logmax : RealT*, st : VectorT*, window : IntegerT, maxind : IntegerT) : LibC::Int
  fun revolver_st_r = igraph_revolver_st_r(graph : T*, st : VectorT*, kernel : VectorT*, window : IntegerT) : LibC::Int
  fun revolver_exp_r = igraph_revolver_exp_r(graph : T*, expected : VectorT*, kernel : VectorT*, st : VectorT*, window : IntegerT, pmaxind : IntegerT) : LibC::Int
  fun revolver_error_r = igraph_revolver_error_r(graph : T*, kernel : VectorT*, st : VectorT*, window : IntegerT, maxind : IntegerT, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_error2_r = igraph_revolver_error2_r(graph : T*, kernel : VectorT*, window : IntegerT, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_ar = igraph_revolver_ar(graph : T*, niter : IntegerT, agebins : IntegerT, window : IntegerT, kernel : MatrixT*, sd : MatrixT*, norm : MatrixT*, cites : MatrixT*, expected : MatrixT*, logprob : RealT*, lognull : RealT*, logmax : RealT*, debug : MatrixT*, debugres : VectorPtrT*) : LibC::Int
  fun revolver_mes_ar = igraph_revolver_mes_ar(graph : T*, kernel : MatrixT*, sd : MatrixT*, norm : MatrixT*, cites : MatrixT*, debug : MatrixT*, debugres : VectorPtrT*, logmax : RealT*, st : VectorT*, pagebins : IntegerT, pwindow : IntegerT, maxind : IntegerT) : LibC::Int
  fun revolver_st_ar = igraph_revolver_st_ar(graph : T*, st : VectorT*, kernel : MatrixT*, pwindow : IntegerT) : LibC::Int
  fun revolver_exp_ar = igraph_revolver_exp_ar(graph : T*, expected : MatrixT*, kernel : MatrixT*, st : VectorT*, agebins : IntegerT, window : IntegerT, pmaxind : IntegerT) : LibC::Int
  fun revolver_error_ar = igraph_revolver_error_ar(graph : T*, kernel : MatrixT*, st : VectorT*, pagebins : IntegerT, pwindow : IntegerT, maxind : IntegerT, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_error2_ar = igraph_revolver_error2_ar(graph : T*, kernel : MatrixT*, window : IntegerT, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_di = igraph_revolver_di(graph : T*, niter : IntegerT, cats : VectorT*, kernel : MatrixT*, sd : MatrixT*, norm : MatrixT*, cites : MatrixT*, expected : MatrixT*, logprob : RealT*, lognull : RealT*, logmax : RealT*, debug : MatrixT*, debugres : VectorPtrT*) : LibC::Int
  fun revolver_mes_di = igraph_revolver_mes_di(graph : T*, kernel : MatrixT*, sd : MatrixT*, norm : MatrixT*, cites : MatrixT*, debug : MatrixT*, debugres : VectorPtrT*, logmax : RealT*, st : VectorT*, cats : VectorT*, pnocats : IntegerT, pmaxind : IntegerT) : LibC::Int
  fun revolver_st_di = igraph_revolver_st_di(graph : T*, st : VectorT*, kernel : MatrixT*, cats : VectorT*) : LibC::Int
  fun revolver_exp_di = igraph_revolver_exp_di(graph : T*, expected : MatrixT*, kernel : MatrixT*, st : VectorT*, cats : VectorT*, pnocats : IntegerT, pmaxind : IntegerT) : LibC::Int
  fun revolver_error_di = igraph_revolver_error_di(graph : T*, kernel : MatrixT*, st : VectorT*, cats : VectorT*, pnocats : IntegerT, pmaxind : IntegerT, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_error2_di = igraph_revolver_error2_di(graph : T*, kernel : MatrixT*, cats : VectorT*, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_adi = igraph_revolver_adi(graph : T*, niter : IntegerT, agebins : IntegerT, cats : VectorT*, kernel : Array3T*, sd : Array3T*, norm : Array3T*, cites : Array3T*, expected : Array3T*, logprob : RealT*, lognull : RealT*, logmax : RealT*, debug : MatrixT*, debugres : VectorPtrT*) : LibC::Int
  fun revolver_mes_adi = igraph_revolver_mes_adi(graph : T*, kernel : Array3T*, sd : Array3T*, norm : Array3T*, cites : Array3T*, debug : MatrixT*, debugres : VectorPtrT*, logmax : RealT*, st : VectorT*, cats : VectorT*, pnocats : IntegerT, pmaxind : IntegerT, pagebins : IntegerT) : LibC::Int
  fun revolver_st_adi = igraph_revolver_st_adi(graph : T*, st : VectorT*, kernel : Array3T*, cats : VectorT*) : LibC::Int
  fun revolver_exp_adi = igraph_revolver_exp_adi(graph : T*, expected : Array3T*, kernel : Array3T*, st : VectorT*, cats : VectorT*, pnocats : IntegerT, pmaxind : IntegerT, pagebins : IntegerT) : LibC::Int
  fun revolver_error_adi = igraph_revolver_error_adi(graph : T*, kernel : Array3T*, st : VectorT*, cats : VectorT*, pnocats : IntegerT, pmaxind : IntegerT, pagebins : IntegerT, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_error2_adi = igraph_revolver_error2_adi(graph : T*, kernel : Array3T*, cats : VectorT*, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_il = igraph_revolver_il(graph : T*, niter : IntegerT, agebins : IntegerT, cats : VectorT*, kernel : MatrixT*, sd : MatrixT*, norm : MatrixT*, cites : MatrixT*, expected : MatrixT*, logprob : RealT*, lognull : RealT*, logmax : RealT*, debug : MatrixT*, debugres : VectorPtrT*) : LibC::Int
  fun revolver_mes_il = igraph_revolver_mes_il(graph : T*, kernel : MatrixT*, sd : MatrixT*, norm : MatrixT*, cites : MatrixT*, debug : MatrixT*, debugres : VectorPtrT*, logmax : RealT*, st : VectorT*, cats : VectorT*, pnocats : IntegerT, pagebins : IntegerT) : LibC::Int
  fun revolver_st_il = igraph_revolver_st_il(graph : T*, st : VectorT*, kernel : MatrixT*, cats : VectorT*) : LibC::Int
  fun revolver_exp_il = igraph_revolver_exp_il(graph : T*, expected : MatrixT*, kernel : MatrixT*, st : VectorT*, cats : VectorT*, nocats : IntegerT, pagebins : IntegerT) : LibC::Int
  fun revolver_error_il = igraph_revolver_error_il(graph : T*, kernel : MatrixT*, st : VectorT*, cats : VectorT*, nocats : IntegerT, pagebins : IntegerT, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_error2_il = igraph_revolver_error2_il(graph : T*, kernel : MatrixT*, cats : VectorT*, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_ir = igraph_revolver_ir(graph : T*, niter : IntegerT, window : IntegerT, cats : VectorT*, kernel : MatrixT*, sd : MatrixT*, norm : MatrixT*, cites : MatrixT*, expected : MatrixT*, logprob : RealT*, lognull : RealT*, logmax : RealT*, debug : MatrixT*, debugres : VectorPtrT*) : LibC::Int
  fun revolver_mes_ir = igraph_revolver_mes_ir(graph : T*, kernel : MatrixT*, sd : MatrixT*, norm : MatrixT*, cites : MatrixT*, debug : MatrixT*, debugres : VectorPtrT*, logmax : RealT*, st : VectorT*, pwindow : IntegerT, cats : VectorT*, pnocats : IntegerT, pmaxind : IntegerT) : LibC::Int
  fun revolver_st_ir = igraph_revolver_st_ir(graph : T*, st : VectorT*, kernel : MatrixT*, pwindow : IntegerT, cats : VectorT*) : LibC::Int
  fun revolver_exp_ir = igraph_revolver_exp_ir(graph : T*, expected : MatrixT*, kernel : MatrixT*, st : VectorT*, pwindow : IntegerT, cats : VectorT*, pnocats : IntegerT, pmaxind : IntegerT) : LibC::Int
  fun revolver_error_ir = igraph_revolver_error_ir(graph : T*, kernel : MatrixT*, st : VectorT*, pwindow : IntegerT, cats : VectorT*, pnocats : IntegerT, pmaxind : IntegerT, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_error2_ir = igraph_revolver_error2_ir(graph : T*, kernel : MatrixT*, cats : VectorT*, window : IntegerT, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_air = igraph_revolver_air(graph : T*, niter : IntegerT, window : IntegerT, agebins : IntegerT, cats : VectorT*, kernel : Array3T*, sd : Array3T*, norm : Array3T*, cites : Array3T*, expected : Array3T*, logprob : RealT*, lognull : RealT*, logmax : RealT*, debug : MatrixT*, debugres : VectorPtrT*) : LibC::Int
  fun revolver_mes_air = igraph_revolver_mes_air(graph : T*, kernel : Array3T*, sd : Array3T*, norm : Array3T*, cites : Array3T*, debug : MatrixT*, debugres : VectorPtrT*, logmax : RealT*, st : VectorT*, pwindow : IntegerT, cats : VectorT*, pnocats : IntegerT, pmaxind : IntegerT, pagebins : IntegerT) : LibC::Int
  fun revolver_st_air = igraph_revolver_st_air(graph : T*, st : VectorT*, kernel : Array3T*, pwindow : IntegerT, cats : VectorT*) : LibC::Int
  fun revolver_exp_air = igraph_revolver_exp_air(graph : T*, expected : Array3T*, kernel : Array3T*, st : VectorT*, pwindow : IntegerT, cats : VectorT*, pnocats : IntegerT, pmaxind : IntegerT, pagebins : IntegerT) : LibC::Int
  fun revolver_error_air = igraph_revolver_error_air(graph : T*, kernel : Array3T*, st : VectorT*, pwindow : IntegerT, cats : VectorT*, pnocats : IntegerT, pmaxind : IntegerT, pagebins : IntegerT, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_error2_air = igraph_revolver_error2_air(graph : T*, kernel : Array3T*, cats : VectorT*, window : IntegerT, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_d_d = igraph_revolver_d_d(graph : T*, niter : IntegerT, vtime : VectorT*, etime : VectorT*, kernel : MatrixT*, sd : MatrixT*, norm : MatrixT*, cites : MatrixT*, expected : MatrixT*, logprob : RealT*, lognull : RealT*, debug : MatrixT*, debugres : VectorPtrT*) : LibC::Int
  fun revolver_mes_d_d = igraph_revolver_mes_d_d(graph : T*, inclist : LazyInclistT*, kernel : MatrixT*, sd : MatrixT*, norm : MatrixT*, cites : MatrixT*, debug : MatrixT*, debugres : VectorPtrT*, st : VectorT*, vtime : VectorT*, vtimeidx : VectorT*, etime : VectorT*, etimeidx : VectorT*, pno_of_events : IntegerT, pmaxdegree : IntegerT) : LibC::Int
  fun revolver_st_d_d = igraph_revolver_st_d_d(graph : T*, inclist : LazyInclistT*, st : VectorT*, kernel : MatrixT*, vtime : VectorT*, vtimeidx : VectorT*, etime : VectorT*, etimeidx : VectorT*, pno_of_events : IntegerT) : LibC::Int
  fun revolver_exp_d_d = igraph_revolver_exp_d_d(graph : T*, inclist : LazyInclistT*, expected : MatrixT*, kernel : MatrixT*, st : VectorT*, vtime : VectorT*, vtimeidx : VectorT*, etime : VectorT*, etimeidx : VectorT*, pno_of_events : IntegerT, pmaxdegree : IntegerT) : LibC::Int
  fun revolver_error_d_d = igraph_revolver_error_d_d(graph : T*, inclist : LazyInclistT*, kernel : MatrixT*, st : VectorT*, vtime : VectorT*, vtimeidx : VectorT*, etime : VectorT*, etimeidx : VectorT*, pno_of_events : IntegerT, pmaxdegree : IntegerT, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_p_p = igraph_revolver_p_p(graph : T*, niter : IntegerT, vtime : VectorT*, etime : VectorT*, authors : VectorT*, eventsizes : VectorT*, kernel : MatrixT*, sd : MatrixT*, norm : MatrixT*, cites : MatrixT*, expected : MatrixT*, logprob : RealT*, lognull : RealT*, debug : MatrixT*, debugres : VectorPtrT*) : LibC::Int
  fun revolver_mes_p_p = igraph_revolver_mes_p_p(graph : T*, inclist : LazyInclistT*, kernel : MatrixT*, sd : MatrixT*, norm : MatrixT*, cites : MatrixT*, debug : MatrixT*, debugres : VectorPtrT*, st : VectorT*, vtime : VectorT*, vtimeidx : VectorT*, etime : VectorT*, etimeidx : VectorT*, pno_of_events : IntegerT, authors : VectorT*, eventsizes : VectorT*, pmaxpapers : IntegerT) : LibC::Int
  fun revolver_st_p_p = igraph_revolver_st_p_p(graph : T*, inclist : LazyInclistT*, st : VectorT*, kernel : MatrixT*, vtime : VectorT*, vtimeidx : VectorT*, etime : VectorT*, etimeidx : VectorT*, pno_of_events : IntegerT, authors : VectorT*, eventsizes : VectorT*, pmaxpapers : IntegerT) : LibC::Int
  fun revolver_exp_p_p = igraph_revolver_exp_p_p(graph : T*, inclist : LazyInclistT*, expected : MatrixT*, kernel : MatrixT*, st : VectorT*, vtime : VectorT*, vtimeidx : VectorT*, etime : VectorT*, etimeidx : VectorT*, pno_of_events : IntegerT, authors : VectorT*, eventsizes : VectorT*, pmaxpapers : IntegerT) : LibC::Int
  fun revolver_error_p_p = igraph_revolver_error_p_p(graph : T*, inclist : LazyInclistT*, kernel : MatrixT*, st : VectorT*, vtime : VectorT*, vtimeidx : VectorT*, etime : VectorT*, etimeidx : VectorT*, pno_of_events : IntegerT, authors : VectorT*, eventsizes : VectorT*, pmaxpapers : IntegerT, logprob : RealT*, lognull : RealT*) : LibC::Int
  fun revolver_ml_d = igraph_revolver_ml_d(graph : T*, niter : IntegerT, kernel : VectorT*, cites : VectorT*, delta : RealT, filter : VectorT*, logprob : RealT*, logmax : RealT*) : LibC::Int
  fun revolver_probs_d = igraph_revolver_probs_d(graph : T*, kernel : VectorT*, logprobs : VectorT*, logcited : VectorT*, logciting : VectorT*, ntk : BoolT) : LibC::Int
  fun revolver_ml_de = igraph_revolver_ml_de(graph : T*, niter : IntegerT, kernel : MatrixT*, cats : VectorT*, cites : MatrixT*, delta : RealT, filter : VectorT*, logprob : RealT*, logmax : RealT*) : LibC::Int
  fun revolver_probs_de = igraph_revolver_probs_de(graph : T*, kernel : MatrixT*, cats : VectorT*, logprobs : VectorT*, logcited : VectorT*, logciting : VectorT*) : LibC::Int
  fun revolver_ml_ade = igraph_revolver_ml_ade(graph : T*, niter : IntegerT, kernel : Array3T*, cats : VectorT*, cites : Array3T*, pagebins : IntegerT, delta : RealT, filter : VectorT*, logprob : RealT*, logmax : RealT*) : LibC::Int
  fun revolver_probs_ade = igraph_revolver_probs_ade(graph : T*, kernel : Array3T*, cats : VectorT*, logprobs : VectorT*, logcited : VectorT*, logciting : VectorT*) : LibC::Int
  fun revolver_ml_f = igraph_revolver_ml_f(graph : T*, niter : IntegerT, kernel : VectorT*, cites : VectorT*, delta : RealT, logprob : RealT*, logmax : RealT*) : LibC::Int
  fun revolver_ml_df = igraph_revolver_ml_df(graph : T*, niter : IntegerT, kernel : MatrixT*, cites : MatrixT*, delta : RealT, logprob : RealT*, logmax : RealT*) : LibC::Int
  fun revolver_ml_l = igraph_revolver_ml_l(graph : T*, niter : IntegerT, kernel : VectorT*, cites : VectorT*, pagebins : IntegerT, delta : RealT, logprob : RealT*, logmax : RealT*) : LibC::Int
  fun revolver_ml_ad = igraph_revolver_ml_ad(graph : T*, niter : IntegerT, kernel : MatrixT*, cites : MatrixT*, pagebins : IntegerT, delta : RealT, filter : VectorT*, logprob : RealT*, logmax : RealT*) : LibC::Int
  fun revolver_probs_ad = igraph_revolver_probs_ad(graph : T*, kernel : MatrixT*, logprobs : VectorT*, logcited : VectorT*, logciting : VectorT*, ntk : BoolT) : LibC::Int
  fun revolver_ml_d = igraph_revolver_ml_D(graph : T*, res : VectorT*, fmin : RealT*, abstol : RealT, reltol : RealT, maxit : LibC::Int, a_fun : VectorT*, VectorT*, Void* -> RealT, d_a_fun : VectorT*, VectorT*, VectorT*, Void* -> Void, filter : VectorT*, fncount : IntegerT*, grcount : IntegerT*) : LibC::Int
  fun revolver_ml_d_alpha = igraph_revolver_ml_D_alpha(graph : T*, alpha : RealT*, fmin : RealT*, abstol : RealT, reltol : RealT, maxit : LibC::Int, filter : VectorT*, fncount : IntegerT*, grcount : IntegerT*) : LibC::Int
  fun revolver_ml_d_alpha_a = igraph_revolver_ml_D_alpha_a(graph : T*, alpha : RealT*, a : RealT*, fmin : RealT*, abstol : RealT, reltol : RealT, maxit : LibC::Int, filter : VectorT*, fncount : IntegerT*, grcount : IntegerT*) : LibC::Int
  fun revolver_ml_de = igraph_revolver_ml_DE(graph : T*, cats : VectorT*, res : VectorT*, fmin : RealT*, abstol : RealT, reltol : RealT, maxit : LibC::Int, a_fun : VectorT*, VectorT*, Void* -> RealT, d_a_fun : VectorT*, VectorT*, VectorT*, Void* -> Void, filter : VectorT*, fncount : IntegerT*, grcount : IntegerT*, lastderiv : VectorT*) : LibC::Int
  fun revolver_ml_de_alpha_a = igraph_revolver_ml_DE_alpha_a(graph : T*, cats : VectorT*, alpha : RealT*, a : RealT*, coeffs : VectorT*, fmin : RealT*, abstol : RealT, reltol : RealT, maxit : LibC::Int, filter : VectorT*, fncount : IntegerT*, grcount : IntegerT*) : LibC::Int
  fun revolver_ml_ad = igraph_revolver_ml_AD(graph : T*, res : VectorT*, fmin : RealT*, abstol : RealT, reltol : RealT, maxit : LibC::Int, a_fun : VectorT*, VectorT*, Void* -> RealT, d_a_fun : VectorT*, VectorT*, VectorT*, Void* -> Void, agebins : LibC::Int, filter : VectorT*, fncount : IntegerT*, grcount : IntegerT*, lastderiv : VectorT*) : LibC::Int
  fun revolver_ml_ad_alpha_a_beta = igraph_revolver_ml_AD_alpha_a_beta(graph : T*, alpha : RealT*, a : RealT*, beta : RealT*, fmin : RealT*, abstol : RealT, reltol : RealT, maxit : LibC::Int, agebins : LibC::Int, filter : VectorT*, fncount : IntegerT*, grcount : IntegerT*) : LibC::Int
  fun revolver_ml_ad_dpareto = igraph_revolver_ml_AD_dpareto(graph : T*, alpha : RealT*, a : RealT*, paralpha : RealT*, parbeta : RealT*, parscale : RealT*, fmin : RealT*, abstol : RealT, reltol : RealT, maxit : LibC::Int, agebins : LibC::Int, filter : VectorT*, fncount : IntegerT*, grcount : IntegerT*) : LibC::Int
  fun revolver_ml_ad_dpareto_eval = igraph_revolver_ml_AD_dpareto_eval(graph : T*, alpha : RealT, a : RealT, paralpha : RealT, parbeta : RealT, parscale : RealT, value : RealT*, deriv : VectorT*, agebins : LibC::Int, filter : VectorT*) : LibC::Int
  fun revolver_ml_ade = igraph_revolver_ml_ADE(graph : T*, cats : VectorT*, res : VectorT*, fmin : RealT*, abstol : RealT, reltol : RealT, maxit : LibC::Int, a_fun : VectorT*, VectorT*, Void* -> RealT, d_a_fun : VectorT*, VectorT*, VectorT*, Void* -> Void, agebins : LibC::Int, filter : VectorT*, fncount : IntegerT*, grcount : IntegerT*, lastderiv : VectorT*) : LibC::Int
  fun revolver_probs_ade = igraph_revolver_probs_ADE(graph : T*, a_fun : VectorT*, VectorT*, Void* -> RealT, par : MatrixT*, cats : VectorT*, gcats : VectorT*, agebins : LibC::Int, logprobs : VectorT*, logcited : VectorT*, logciting : VectorT*) : LibC::Int
  fun revolver_ml_ade_alpha_a_beta = igraph_revolver_ml_ADE_alpha_a_beta(graph : T*, cats : VectorT*, alpha : RealT*, a : RealT*, beta : RealT*, coeffs : VectorT*, fmin : RealT*, abstol : RealT, reltol : RealT, maxit : LibC::Int, agebins : LibC::Int, filter : VectorT*, fncount : IntegerT*, grcount : IntegerT*) : LibC::Int
  fun revolver_ml_ade_dpareto = igraph_revolver_ml_ADE_dpareto(graph : T*, cats : VectorT*, alpha : RealT*, a : RealT*, paralpha : RealT*, parbeta : RealT*, parscale : RealT*, coeffs : VectorT*, fmin : RealT*, abstol : RealT, reltol : RealT, maxit : LibC::Int, agebins : LibC::Int, filter : VectorT*, fncount : IntegerT*, grcount : IntegerT*) : LibC::Int
  fun revolver_ml_ade_dpareto_eval = igraph_revolver_ml_ADE_dpareto_eval(graph : T*, cats : VectorT*, alpha : RealT, a : RealT, paralpha : RealT, parbeta : RealT, parscale : RealT, coeffs : VectorT*, value : RealT*, deriv : VectorT*, agebins : LibC::Int, filter : VectorT*) : LibC::Int
  fun revolver_ml_ade_dpareto_evalf = igraph_revolver_ml_ADE_dpareto_evalf(graph : T*, cats : VectorT*, par : MatrixT*, value : VectorT*, agebins : LibC::Int, filter : VectorT*) : LibC::Int
  fun revolver_probs_ade_dpareto = igraph_revolver_probs_ADE_dpareto(graph : T*, par : MatrixT*, cats : VectorT*, gcats : VectorT*, agebins : LibC::Int, logprobs : VectorT*, logcited : VectorT*, logciting : VectorT*) : LibC::Int
  struct PlfitResultT
    continuous : BoolT
    alpha : LibC::Double
    xmin : LibC::Double
    l : LibC::Double
    d : LibC::Double
    p : LibC::Double
  end
  fun running_mean = igraph_running_mean(data : VectorT*, res : VectorT*, binwidth : IntegerT) : LibC::Int
  fun fisher_yates_shuffle = igraph_fisher_yates_shuffle(seq : VectorT*) : LibC::Int
  fun random_sample = igraph_random_sample(res : VectorT*, l : RealT, h : RealT, length : IntegerT) : LibC::Int
  fun convex_hull = igraph_convex_hull(data : MatrixT*, resverts : VectorT*, rescoords : MatrixT*) : LibC::Int
  fun zeroin = igraph_zeroin(ax : RealT*, bx : RealT*, f : RealT, Void* -> RealT, info : Void*, tol : RealT*, maxit : LibC::Int*, res : RealT*) : LibC::Int
  fun bfgs = igraph_bfgs(b : VectorT*, fmin : RealT*, fminfn : ScalarFunctionT, fmingr : VectorFunctionT, maxit : LibC::Int, trace : LibC::Int, abstol : RealT, reltol : RealT, n_report : LibC::Int, ex : Void*, fncount : IntegerT*, grcount : IntegerT*) : LibC::Int
  alias ScalarFunctionT = VectorT*, VectorT*, Void* -> RealT
  alias VectorFunctionT = VectorT*, VectorT*, VectorT*, Void* -> Void
  fun power_law_fit = igraph_power_law_fit(vector : VectorT*, result : PlfitResultT*, xmin : RealT, force_continuous : BoolT) : LibC::Int
  fun cocitation = igraph_cocitation(graph : T*, res : MatrixT*, vids : VsT) : LibC::Int
  fun bibcoupling = igraph_bibcoupling(graph : T*, res : MatrixT*, vids : VsT) : LibC::Int
  fun similarity_jaccard = igraph_similarity_jaccard(graph : T*, res : MatrixT*, vids : VsT, mode : NeimodeT, loops : BoolT) : LibC::Int
  fun similarity_jaccard_pairs = igraph_similarity_jaccard_pairs(graph : T*, res : VectorT*, pairs : VectorT*, mode : NeimodeT, loops : BoolT) : LibC::Int
  fun similarity_jaccard_es = igraph_similarity_jaccard_es(graph : T*, res : VectorT*, es : EsT, mode : NeimodeT, loops : BoolT) : LibC::Int
  fun similarity_dice = igraph_similarity_dice(graph : T*, res : MatrixT*, vids : VsT, mode : NeimodeT, loops : BoolT) : LibC::Int
  fun similarity_dice_pairs = igraph_similarity_dice_pairs(graph : T*, res : VectorT*, pairs : VectorT*, mode : NeimodeT, loops : BoolT) : LibC::Int
  fun similarity_dice_es = igraph_similarity_dice_es(graph : T*, res : VectorT*, es : EsT, mode : NeimodeT, loops : BoolT) : LibC::Int
  fun similarity_inverse_log_weighted = igraph_similarity_inverse_log_weighted(graph : T*, res : MatrixT*, vids : VsT, mode : NeimodeT) : LibC::Int
  fun blas_dgemv = igraph_blas_dgemv(transpose : BoolT, alpha : RealT, a : MatrixT*, x : VectorT*, beta : RealT, y : VectorT*)
  fun blas_dgemv_array = igraph_blas_dgemv_array(transpose : BoolT, alpha : RealT, a : MatrixT*, x : RealT*, beta : RealT, y : RealT*)
  fun lapack_dgetrf = igraph_lapack_dgetrf(a : MatrixT*, ipiv : VectorIntT*, info : LibC::Int*) : LibC::Int
  fun lapack_dgetrs = igraph_lapack_dgetrs(transpose : BoolT, a : MatrixT*, ipiv : VectorIntT*, b : MatrixT*) : LibC::Int
  fun lapack_dgesv = igraph_lapack_dgesv(a : MatrixT*, ipiv : VectorIntT*, b : MatrixT*, info : LibC::Int*) : LibC::Int
  LapackDsyevAll = 0
  LapackDsyevInterval = 1
  LapackDsyevSelect = 2
  fun lapack_dsyevr = igraph_lapack_dsyevr(a : MatrixT*, which : LapackDsyevWhichT, vl : RealT, vu : RealT, vestimate : LibC::Int, il : LibC::Int, iu : LibC::Int, abstol : RealT, values : VectorT*, vectors : MatrixT*, support : VectorIntT*) : LibC::Int
  enum LapackDsyevWhichT
    LapackDsyevAll = 0
    LapackDsyevInterval = 1
    LapackDsyevSelect = 2
  end
  fun lapack_dgeev = igraph_lapack_dgeev(a : MatrixT*, valuesreal : VectorT*, valuesimag : VectorT*, vectorsleft : MatrixT*, vectorsright : MatrixT*, info : LibC::Int*) : LibC::Int
  LapackDgeevxBalanceNone = 0
  LapackDgeevxBalancePerm = 1
  LapackDgeevxBalanceScale = 2
  LapackDgeevxBalanceBoth = 3
  fun lapack_dgeevx = igraph_lapack_dgeevx(balance : LapackDgeevxBalanceT, a : MatrixT*, valuesreal : VectorT*, valuesimag : VectorT*, vectorsleft : MatrixT*, vectorsright : MatrixT*, ilo : LibC::Int*, ihi : LibC::Int*, scale : VectorT*, abnrm : RealT*, rconde : VectorT*, rcondv : VectorT*, info : LibC::Int*) : LibC::Int
  enum LapackDgeevxBalanceT
    LapackDgeevxBalanceNone = 0
    LapackDgeevxBalancePerm = 1
    LapackDgeevxBalanceScale = 2
    LapackDgeevxBalanceBoth = 3
  end
  fun lapack_dgehrd = igraph_lapack_dgehrd(a : MatrixT*, ilo : LibC::Int, ihi : LibC::Int, result : MatrixT*) : LibC::Int
  fun assortativity_nominal = igraph_assortativity_nominal(graph : T*, types : VectorT*, res : RealT*, directed : BoolT) : LibC::Int
  fun assortativity = igraph_assortativity(graph : T*, types1 : VectorT*, types2 : VectorT*, res : RealT*, directed : BoolT) : LibC::Int
  fun assortativity_degree = igraph_assortativity_degree(graph : T*, res : RealT*, directed : BoolT) : LibC::Int
  fun is_separator = igraph_is_separator(graph : T*, candidate : VsT, res : BoolT*) : LibC::Int
  fun all_minimal_st_separators = igraph_all_minimal_st_separators(graph : T*, separators : VectorPtrT*) : LibC::Int
  fun is_minimal_separator = igraph_is_minimal_separator(graph : T*, candidate : VsT, res : BoolT*) : LibC::Int
  fun minimum_size_separators = igraph_minimum_size_separators(graph : T*, separators : VectorPtrT*) : LibC::Int
  fun cohesive_blocks = igraph_cohesive_blocks(graph : T*, blocks : VectorPtrT*, cohesion : VectorT*, parent : VectorT*, block_tree : T*) : LibC::Int
  EigenAuto = 0
  EigenLapack = 1
  EigenArpack = 2
  EigenCompAuto = 3
  EigenCompLapack = 4
  EigenCompArpack = 5
  EigenLm = 0
  EigenSm = 1
  EigenLa = 2
  EigenSa = 3
  EigenBe = 4
  EigenLr = 5
  EigenSr = 6
  EigenLi = 7
  EigenSi = 8
  EigenAll = 9
  EigenInterval = 10
  EigenSelect = 11
  struct EigenWhichT
    pos : EigenWhichPositionT
    howmany : LibC::Int
    il : LibC::Int
    iu : LibC::Int
    vl : RealT
    vu : RealT
    vestimate : LibC::Int
    balance : LapackDgeevxBalanceT
  end
  enum EigenWhichPositionT
    EigenLm = 0
    EigenSm = 1
    EigenLa = 2
    EigenSa = 3
    EigenBe = 4
    EigenLr = 5
    EigenSr = 6
    EigenLi = 7
    EigenSi = 8
    EigenAll = 9
    EigenInterval = 10
    EigenSelect = 11
  end
  fun eigen_matrix_symmetric = igraph_eigen_matrix_symmetric(a : MatrixT*, s_a : SparsematT*, fun : RealT*, RealT*, LibC::Int, Void* -> LibC::Int, n : LibC::Int, extra : Void*, algorithm : EigenAlgorithmT, which : EigenWhichT*, options : ArpackOptionsT*, storage : ArpackStorageT*, values : VectorT*, vectors : MatrixT*) : LibC::Int
  enum EigenAlgorithmT
    EigenAuto = 0
    EigenLapack = 1
    EigenArpack = 2
    EigenCompAuto = 3
    EigenCompLapack = 4
    EigenCompArpack = 5
  end
  fun eigen_matrix = igraph_eigen_matrix(a : MatrixT*, s_a : SparsematT*, fun : RealT*, RealT*, LibC::Int, Void* -> LibC::Int, n : LibC::Int, extra : Void*, algorithm : EigenAlgorithmT, which : EigenWhichT*, options : ArpackOptionsT*, storage : ArpackStorageT*, values : VectorComplexT*, vectors : MatrixComplexT*) : LibC::Int
  fun eigen_adjacency = igraph_eigen_adjacency(graph : T*, algorithm : EigenAlgorithmT, which : EigenWhichT*, options : ArpackOptionsT*, storage : ArpackStorageT*, values : VectorT*, vectors : MatrixT*, cmplxvalues : VectorComplexT*, cmplxvectors : MatrixComplexT*) : LibC::Int
  fun eigen_laplacian = igraph_eigen_laplacian(graph : T*, algorithm : EigenAlgorithmT, which : EigenWhichT*, options : ArpackOptionsT*, storage : ArpackStorageT*, values : VectorT*, vectors : MatrixT*, cmplxvalues : VectorComplexT*, cmplxvectors : MatrixComplexT*) : LibC::Int
  struct HrgT
    left : VectorT
    right : VectorT
    prob : VectorT
    edges : VectorT
    vertices : VectorT
  end
  fun hrg_init = igraph_hrg_init(hrg : HrgT*, n : LibC::Int) : LibC::Int
  fun hrg_destroy = igraph_hrg_destroy(hrg : HrgT*)
  fun hrg_size = igraph_hrg_size(hrg : HrgT*) : LibC::Int
  fun hrg_resize = igraph_hrg_resize(hrg : HrgT*, newsize : LibC::Int) : LibC::Int
  fun hrg_fit = igraph_hrg_fit(graph : T*, hrg : HrgT*, start : BoolT, steps : LibC::Int) : LibC::Int
  fun hrg_sample = igraph_hrg_sample(graph : T*, sample : T*, samples : VectorPtrT*, hrg : HrgT*, start : BoolT) : LibC::Int
  fun hrg_game = igraph_hrg_game(graph : T*, hrg : HrgT*) : LibC::Int
  fun hrg_dendrogram = igraph_hrg_dendrogram(graph : T*, hrg : HrgT*) : LibC::Int
  fun hrg_consensus = igraph_hrg_consensus(graph : T*, parents : VectorT*, weights : VectorT*, hrg : HrgT*, start : BoolT, num_samples : LibC::Int) : LibC::Int
  fun hrg_predict = igraph_hrg_predict(graph : T*, edges : VectorT*, prob : VectorT*, hrg : HrgT*, start : BoolT, num_samples : LibC::Int, num_bins : LibC::Int) : LibC::Int
  fun hrg_create = igraph_hrg_create(hrg : HrgT*, graph : T*, prob : VectorT*) : LibC::Int
  fun allow_interruption = igraph_allow_interruption(data : Void*) : LibC::Int
  fun set_interruption_handler = igraph_set_interruption_handler(new_handler : Void* -> LibC::Int) : Void* -> LibC::Int
  ScgSymmetric = 1
  ScgLaplacian = 2
  ScgStochastic = 3
  ScgOptimum = 1
  ScgIntervKm = 2
  ScgInterv = 3
  ScgExact = 4
  ScgNormRow = 1
  ScgNormCol = 2
  ScgDirectionDefault = 1
  ScgDirectionLeft = 2
  ScgDirectionRight = 3
  fun scg_grouping = igraph_scg_grouping(v : MatrixT*, groups : VectorT*, nt : IntegerT, nt_vec : VectorT*, mtype : ScgMatrixT, algo : ScgAlgorithmT, p : VectorT*, maxiter : IntegerT) : LibC::Int
  enum ScgMatrixT
    ScgSymmetric = 1
    ScgLaplacian = 2
    ScgStochastic = 3
  end
  enum ScgAlgorithmT
    ScgOptimum = 1
    ScgIntervKm = 2
    ScgInterv = 3
    ScgExact = 4
  end
  fun scg_semiprojectors = igraph_scg_semiprojectors(groups : VectorT*, mtype : ScgMatrixT, l : MatrixT*, r : MatrixT*, lsparse : SparsematT*, rsparse : SparsematT*, p : VectorT*, norm : ScgNormT) : LibC::Int
  enum ScgNormT
    ScgNormRow = 1
    ScgNormCol = 2
  end
  fun scg_norm_eps = igraph_scg_norm_eps(v : MatrixT*, groups : VectorT*, eps : VectorT*, mtype : ScgMatrixT, p : VectorT*, norm : ScgNormT) : LibC::Int
  fun scg_adjacency = igraph_scg_adjacency(graph : T*, matrix : MatrixT*, sparsemat : SparsematT*, ev : VectorT*, nt : IntegerT, nt_vec : VectorT*, algo : ScgAlgorithmT, values : VectorT*, vectors : MatrixT*, groups : VectorT*, use_arpack : BoolT, maxiter : IntegerT, scg_graph : T*, scg_matrix : MatrixT*, scg_sparsemat : SparsematT*, l : MatrixT*, r : MatrixT*, lsparse : SparsematT*, rsparse : SparsematT*) : LibC::Int
  fun scg_stochastic = igraph_scg_stochastic(graph : T*, matrix : MatrixT*, sparsemat : SparsematT*, ev : VectorT*, nt : IntegerT, nt_vec : VectorT*, algo : ScgAlgorithmT, norm : ScgNormT, values : VectorComplexT*, vectors : MatrixComplexT*, groups : VectorT*, p : VectorT*, use_arpack : BoolT, maxiter : IntegerT, scg_graph : T*, scg_matrix : MatrixT*, scg_sparsemat : SparsematT*, l : MatrixT*, r : MatrixT*, lsparse : SparsematT*, rsparse : SparsematT*) : LibC::Int
  fun scg_laplacian = igraph_scg_laplacian(graph : T*, matrix : MatrixT*, sparsemat : SparsematT*, ev : VectorT*, nt : IntegerT, nt_vec : VectorT*, algo : ScgAlgorithmT, norm : ScgNormT, direction : ScgDirectionT, values : VectorComplexT*, vectors : MatrixComplexT*, groups : VectorT*, use_arpack : BoolT, maxiter : IntegerT, scg_graph : T*, scg_matrix : MatrixT*, scg_sparsemat : SparsematT*, l : MatrixT*, r : MatrixT*, lsparse : SparsematT*, rsparse : SparsematT*) : LibC::Int
  enum ScgDirectionT
    ScgDirectionDefault = 1
    ScgDirectionLeft = 2
    ScgDirectionRight = 3
  end
  fun is_matching = igraph_is_matching(graph : T*, types : VectorBoolT*, matching : VectorLongT*, result : BoolT*) : LibC::Int
  fun is_maximal_matching = igraph_is_maximal_matching(graph : T*, types : VectorBoolT*, matching : VectorLongT*, result : BoolT*) : LibC::Int
  fun maximum_bipartite_matching = igraph_maximum_bipartite_matching(graph : T*, types : VectorBoolT*, matching_size : IntegerT*, matching_weight : RealT*, matching : VectorLongT*, weights : VectorT*, eps : RealT) : LibC::Int
  fun maximum_matching = igraph_maximum_matching(graph : T*, matching_size : IntegerT*, matching_weight : RealT*, matching : VectorLongT*, weights : VectorT*) : LibC::Int
  fun subclique_next = igraph_subclique_next(graph : T*, weights : VectorT*, ids : VectorIntT*, cliques : VectorPtrT*, result : VectorPtrT*, resultweights : VectorPtrT*, resultids : VectorPtrT*, clique_thr : VectorT*, next_thr : VectorT*) : LibC::Int
  fun graphlets_candidate_basis = igraph_graphlets_candidate_basis(graph : T*, weights : VectorT*, cliques : VectorPtrT*, thresholds : VectorT*) : LibC::Int
  fun graphlets_project = igraph_graphlets_project(graph : T*, weights : VectorT*, cliques : VectorPtrT*, mu : VectorT*, start_mu : BoolT, niter : LibC::Int) : LibC::Int
  fun graphlets = igraph_graphlets(graph : T*, weights : VectorT*, cliques : VectorPtrT*, mu : VectorT*, niter : LibC::Int) : LibC::Int
  struct SirT
    times : VectorT
    no_s : VectorIntT
    no_i : VectorIntT
    no_r : VectorIntT
  end
  fun sir_init = igraph_sir_init(sir : SirT*) : LibC::Int
  fun sir_destroy = igraph_sir_destroy(sir : SirT*)
  fun sir = igraph_sir(graph : T*, beta : RealT, gamma : RealT, no_sim : IntegerT, result : VectorPtrT*) : LibC::Int
  $rngtype_glibc2 : RngTypeT
  $rngtype_rand : RngTypeT
  $rngtype_mt19937 : RngTypeT
  $cattribute_table : AttributeTableT
end

