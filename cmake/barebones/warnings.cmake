function(bb_add_more_warnings_common_basic COMPILE_OPTIONS)
    bb_process_common_flag_availability(
        FLAG -fanalyzer
        FALLBACK ""
        OPTION FANALYZER
    )
    bb_process_common_flag_availability(
        FLAG -Wno-analyzer-possible-null-argument
        FALLBACK ""
        OPTION WNO_ANALYZER_POSSIBLE_NULL_ARGUMENT
    )
    bb_process_common_flag_availability(
        FLAG -Warc-maybe-repeated-use-of-weak
        FALLBACK ""
        OPTION WARC_MAYBE_REPEATED_USE_OF_WEAK
    )
    bb_process_common_flag_availability(
        FLAG -Warc-repeated-use-of-weak
        FALLBACK ""
        OPTION WARC_REPEATED_USE_OF_WEAK
    )
    bb_process_common_flag_availability(
        FLAG -Wattribute-alias=2
        FALLBACK ""
        OPTION WATTRIBUTE_ALIAS_2
    )
    bb_process_common_flag_availability(
        FLAG -Wbad-function-cast
        FALLBACK ""
        OPTION WBAD_FUNCTION_CAST
    )
    bb_process_common_flag_availability(
        FLAG -Wbitwise-op-parentheses
        FALLBACK ""
        OPTION WBITWISE_OP_PARENTHESES
    )
    bb_process_common_flag_availability(
        FLAG -Wbool-operation
        FALLBACK ""
        OPTION WBOOL_OPERATION
    )
    bb_process_common_flag_availability(
        FLAG -Wcast-align
        FALLBACK ""
        OPTION WCAST_ALIGN
    )
    bb_process_common_flag_availability(
        FLAG -Wcast-qual
        FALLBACK ""
        OPTION WCAST_QUAL
    )
    bb_process_common_flag_availability(
        FLAG -Wcomma
        FALLBACK ""
        OPTION WCOMMA
    )
    bb_process_common_flag_availability(
        FLAG -Wcomment
        FALLBACK ""
        OPTION WCOMMENT
    )
    bb_process_common_flag_availability(
        FLAG -Wcompound-token-split-by-space
        FALLBACK ""
        OPTION WCOMPOUND_TOKEN_SPLIT_BY_SPACE
    )
    bb_process_common_flag_availability(
        FLAG -Wconditional-uninitialized
        FALLBACK ""
        OPTION WCONDITIONAL_UNITIALIZED
    )
    bb_process_common_flag_availability(
        FLAG -Wconsumed
        FALLBACK ""
        OPTION WCONSUMED
    )
    bb_process_common_flag_availability(
        FLAG -Wconversion
        FALLBACK ""
        OPTION WCONVERSION
    )
    bb_process_common_flag_availability(
        FLAG -Wdangling-else
        FALLBACK ""
        OPTION WDANGLING_ELSE
    )
    bb_process_common_flag_availability(
        FLAG -Wdeprecated
        FALLBACK ""
        OPTION WDEPRECATED
    )
    bb_process_common_flag_availability(
        FLAG -Wduplicate-decl-specifier
        FALLBACK ""
        OPTION WDUPLICATE_DECL_SPECIFIER
    )
    bb_process_common_flag_availability(
        FLAG -Wduplicated-branches
        FALLBACK ""
        OPTION WDUPLICATED_BRANCHES
    )
    bb_process_common_flag_availability(
        FLAG -Wduplicated-cond
        FALLBACK ""
        OPTION WDUPLICATED_COND
    )
    bb_process_common_flag_availability(
        FLAG -Wextra-semi-stmt
        FALLBACK ""
        OPTION WEXTRA_SEMI_STMT
    )
    bb_process_common_flag_availability(
        FLAG -Wfor-loop-analysis
        FALLBACK ""
        OPTION WFOR_LOOP_ANALYSIS
    )
    bb_process_common_flag_availability(
        FLAG -Wfour-char-constants
        FALLBACK ""
        OPTION WFOUR_CHAR_CONSTANTS
    )
    bb_process_common_flag_availability(
        FLAG -Wframe-address
        FALLBACK ""
        OPTION WFRAME_ADDRESS
    )
    bb_process_common_flag_availability(
        FLAG -Widiomatic-parentheses
        FALLBACK ""
        OPTION WIDIOMATIC_PARENTHESES
    )
    bb_process_common_flag_availability(
        FLAG -Wignored-qualifiers
        FALLBACK ""
        OPTION WIGNORED_QUALIFIERS
    )
    bb_process_common_flag_availability(
        FLAG -Wimplicit-int
        FALLBACK ""
        OPTION WIMPLICIT_INT
    )
    bb_process_common_flag_availability(
        FLAG -Wimplicit-int-conversion
        FALLBACK ""
        OPTION WIMPLICIT_INT_CONVERSION
    )
    bb_process_common_flag_availability(
        FLAG -Wincompatible-function-pointer-types-strict
        FALLBACK ""
        OPTION WINCOMPATIBLE_FUNCTION_POINTER_TYPES_STRICT
    )
    bb_process_common_flag_availability(
        FLAG -Winfinite-recursion
        FALLBACK ""
        OPTION WINFINITE_RECURSION
    )
    bb_process_common_flag_availability(
        FLAG -Wint-in-bool-context
        FALLBACK ""
        OPTION WINT_IN_BOOL_CONTEXT
    )
    bb_process_common_flag_availability(
        FLAG -Winvalid-utf8
        FALLBACK ""
        OPTION WINVALID_UTF8
    )
    bb_process_common_flag_availability(
        FLAG -Wlogical-op
        FALLBACK ""
        OPTION WLOGICAL_OP
    )
    bb_process_common_flag_availability(
        FLAG -Wlogical-op-parentheses
        FALLBACK ""
        OPTION WLOGICAL_OP_PARENTHESES
    )
    bb_process_common_flag_availability(
        FLAG -Wmain
        FALLBACK ""
        OPTION WMAIN
    )
    bb_process_common_flag_availability(
        FLAG -Wmisleading-indentation
        FALLBACK ""
        OPTION WMISLEADING_INDENTATION
    )
    bb_process_common_flag_availability(
        FLAG -Wmissing-braces
        FALLBACK ""
        OPTION WMISSING_BRACES
    )
    bb_process_common_flag_availability(
        FLAG -Wmissing-field-initializers
        FALLBACK ""
        OPTION WMISSING_FIELD_INITIALIZERS
    )
    bb_process_common_flag_availability(
        FLAG -Wmissing-variable-declarations
        FALLBACK ""
        OPTION WMISSING_VARIABLE_DECLARATIONS
    )
    bb_process_common_flag_availability(
        FLAG -Wnewline-eof
        FALLBACK ""
        OPTION WNEWLINE_EOF
    )
    bb_process_common_flag_availability(
        FLAG -Wnonportable-system-include-path
        FALLBACK ""
        OPTION WNONPORTABLE_SYSTEM_INCLUDE_PATH
    )
    bb_process_common_flag_availability(
        FLAG -Wnormalized
        FALLBACK ""
        OPTION WNORMALIZED
    )
    bb_process_common_flag_availability(
        FLAG -Wnull-dereference
        FALLBACK ""
        OPTION WNULL_DEREFERENCE
    )
    bb_process_common_flag_availability(
        FLAG -Wnull-pointer-arithmetic
        FALLBACK ""
        OPTION WNULL_POINTER_ARITHMETIC
    )
    bb_process_common_flag_availability(
        FLAG -Wnull-pointer-subtraction
        FALLBACK ""
        OPTION WNULL_POINTER_SUBTRACTION
    )
    bb_process_common_flag_availability(
        FLAG -Wnullable-to-nonnull-conversion
        FALLBACK ""
        OPTION WNULLABLE_TO_NONNULL_CONVERSION
    )
    bb_process_common_flag_availability(
        FLAG -Wover-aligned
        FALLBACK ""
        OPTION WOVER_ALIGNED
    )
    bb_process_common_flag_availability(
        FLAG -Wpacked
        FALLBACK ""
        OPTION WPACKED
    )
    bb_process_common_flag_availability(
        FLAG -Wpacked-non-pod
        FALLBACK ""
        OPTION WPACKED_NON_POD
    )
    bb_process_common_flag_availability(
        FLAG -Wparentheses
        FALLBACK ""
        OPTION WPARENTHESES
    )
    bb_process_common_flag_availability(
        FLAG -Wpointer-arith
        FALLBACK ""
        OPTION WPOINTER_ARITH
    )
    bb_process_common_flag_availability(
        FLAG -Wpragma-pack
        FALLBACK ""
        OPTION WPRAGMA_PACK
    )
    bb_process_common_flag_availability(
        FLAG -Wprofile-instr-missing
        FALLBACK ""
        OPTION WPROFILE_INSTR_MISSING
    )
    bb_process_common_flag_availability(
        FLAG -Wredundant-decls
        FALLBACK ""
        OPTION WREDUNDANT_DECLS
    )
    bb_process_common_flag_availability(
        FLAG -Wredundant-parens
        FALLBACK ""
        OPTION WREDUNDANT_PARENS
    )
    bb_process_common_flag_availability(
        FLAG -Wself-assign
        FALLBACK ""
        OPTION WSELF_ASSIGN
    )
    bb_process_common_flag_availability(
        FLAG -Wself-assign-overloaded
        FALLBACK ""
        OPTION WSELF_ASSIGN_OVERLOADED
    )
    bb_process_common_flag_availability(
        FLAG -Wself-move
        FALLBACK ""
        OPTION WSELF_MOVE
    )
    bb_process_common_flag_availability(
        FLAG -Wshadow-uncaptured-local
        FALLBACK ""
        OPTION WSHADOW_UNCAPTURED_LOCAL
    )
    bb_process_common_flag_availability(
        FLAG -Wshift-overflow=2
        FALLBACK ""
        OPTION WSHIFT_OVERFLOW_2
    )
    bb_process_common_flag_availability(
        FLAG -Wshift-sign-overflow
        FALLBACK ""
        OPTION WSHIFT_SIGN_OVERFLOW
    )
    bb_process_common_flag_availability(
        FLAG -Wshorten-64-to-32
        FALLBACK ""
        OPTION WSHORTEN_64_TO_32
    )
    bb_process_common_flag_availability(
        FLAG -Wsign-compare
        FALLBACK ""
        OPTION WSIGN_COMPARE
    )
    bb_process_common_flag_availability(
        FLAG -Wsign-conversion
        FALLBACK ""
        OPTION WSIGN_CONVERSION
    )
    bb_process_common_flag_availability(
        FLAG -Wstrict-flex-arrays
        FALLBACK ""
        OPTION WSTRICT_FLEX_ARRAYS
    )
    bb_process_common_flag_availability(
        FLAG -Wstrict-overflow=4
        FALLBACK ""
        OPTION WSTRICT_OVERFLOW_4
    )
    bb_process_common_flag_availability(
        FLAG -Wstrict-prototypes
        FALLBACK ""
        OPTION WSTRICT_PROTOTYPES
    )
    bb_process_common_flag_availability(
        FLAG -Wsuggest-attribute=cold
        FALLBACK ""
        OPTION WSUGGEST_ATTRIBUTE_COLD
    )
    bb_process_common_flag_availability(
        FLAG -Wsuggest-attribute=const
        FALLBACK ""
        OPTION WSUGGEST_ATTRIBUTE_CONST
    )
    bb_process_common_flag_availability(
        FLAG -Wmissing-noreturn
        FALLBACK ""
        OPTION WMISSING_NORETURN
    )
    bb_process_common_flag_availability(
        FLAG -Wsuggest-attribute=noreturn
        FALLBACK ${WMISSING_NORETURN}
        OPTION WSUGGEST_ATTRIBUTE_NORETURN
    )
    bb_process_common_flag_availability(
        FLAG -Wsuggest-attribute=pure
        FALLBACK ""
        OPTION WSUGGEST_ATTRIBUTE_PURE
    )
    bb_process_common_flag_availability(
        FLAG -Wtautological-bitwise-compare
        FALLBACK ""
        OPTION WTAUTOLOGICAL_BITWISE_COMPARE
    )
    bb_process_common_flag_availability(
        FLAG -Wtautological-compare
        FALLBACK ""
        OPTION WTAUTOLOGICAL_COMPARE
    )
    bb_process_common_flag_availability(
        FLAG -Wtautological-overlap-compare
        FALLBACK ""
        OPTION WTAUTOLOGICAL_OVERLAP_COMPARE
    )
    bb_process_common_flag_availability(
        FLAG -Wtautological-type-limit-compare
        FALLBACK ""
        OPTION WTAUTOLOGICAL_TYPE_LIMIT_COMPARE
    )
    bb_process_common_flag_availability(
        FLAG -Wtautological-unsigned-char-zero-compare
        FALLBACK ""
        OPTION WTAUTOLOGICAL_UNSIGNED_CHAR_ZERO_COMPARE
    )
    bb_process_common_flag_availability(
        FLAG -Wtautological-unsigned-zero-compare
        FALLBACK ""
        OPTION WTAUTOLOGICAL_UNSIGNED_ZERO_COMPARE
    )
    bb_process_common_flag_availability(
        FLAG -Wtautological-value-range-compare
        FALLBACK ""
        OPTION WTAUTOLOGICAL_VALUE_RANGE_COMPARE
    )
    bb_process_common_flag_availability(
        FLAG -Wtrampolines
        FALLBACK ""
        OPTION WTRAMPOLINES
    )
    bb_process_common_flag_availability(
        FLAG -Wtrivial-auto-var-init
        FALLBACK ""
        OPTION WTRIVIAL_AUTO_VAR_INIT
    )
    bb_process_common_flag_availability(
        FLAG -Wundef
        FALLBACK ""
        OPTION WUNDEF
    )
    bb_process_common_flag_availability(
        FLAG -Wundef-prefix
        FALLBACK ""
        OPTION WUNDEF_PREFIX
    )
    bb_process_common_flag_availability(
        FLAG -Wunguarded-availability
        FALLBACK ""
        OPTION WUNGUARDED_AVAILABILITY
    )
    bb_process_common_flag_availability(
        FLAG -Wuninitialized
        FALLBACK ""
        OPTION WUNINITIALIZED
    )
    bb_process_common_flag_availability(
        FLAG -Wunknown-pragmas
        FALLBACK ""
        OPTION WUNKNOWN_PRAGMAS
    )
    bb_process_common_flag_availability(
        FLAG -Wunneeded-internal-declaration
        FALLBACK ""
        OPTION WUNNEEDED_INTERNAL_DECLARATION
    )
    bb_process_common_flag_availability(
        FLAG -Wunreachable-code
        FALLBACK ""
        OPTION WUNREACHABLE_CODE
    )
    bb_process_common_flag_availability(
        FLAG -Wunreachable-code-break
        FALLBACK ""
        OPTION WUNREACHABLE_CODE_BREAK
    )
    bb_process_common_flag_availability(
        FLAG -Wunreachable-code-return
        FALLBACK ""
        OPTION WUNREACHABLE_CODE_RETURN
    )
    bb_process_common_flag_availability(
        FLAG -Wunsafe-buffer-usage
        FALLBACK ""
        OPTION WUNSAFE_BUFFER_USAGE
    )
    bb_process_common_flag_availability(
        FLAG -Wunsafe-loop-optimizations
        FALLBACK ""
        OPTION WUNSAFE_LOOP_OPTIMIZATIONS
    )
    bb_process_common_flag_availability(
        FLAG -Wunused-command-line-argument
        FALLBACK ""
        OPTION WUNUSED_COMMAND_LINE_ARGUMENT
    )
    bb_process_common_flag_availability(
        FLAG -Wunused-comparison
        FALLBACK ""
        OPTION WUNUSED_COMPARISON
    )
    bb_process_common_flag_availability(
        FLAG -Wunused-const-variable=2
        FALLBACK ""
        OPTION WUNUSED_CONST_VARIABLE_2
    )
    bb_process_common_flag_availability(
        FLAG -Wunused-function
        FALLBACK ""
        OPTION WUNUSED_FUNCTION
    )
    bb_process_common_flag_availability(
        FLAG -Wunused-label
        FALLBACK ""
        OPTION WUNUSED_LABEL
    )
    bb_process_common_flag_availability(
        FLAG -Wunused-local-typedef
        FALLBACK ""
        OPTION WUNUSED_LOCAL_TYPEDEF
    )
    bb_process_common_flag_availability(
        FLAG -Wunused-macros
        FALLBACK ""
        OPTION WUNUSED_MACROS
    )
    bb_process_common_flag_availability(
        FLAG -Wused-but-marked-unused
        FALLBACK ""
        OPTION WUSED_BUT_MARKED_UNUSED
    )

    unset(_BB_WARNINGS)
    list(APPEND _BB_WARNINGS
        ${FANALYZER}
        ${WNO_ANALYZER_POSSIBLE_NULL_ARGUMENT}
        ${WARC_MAYBE_REPEATED_USE_OF_WEAK}
        ${WARC_REPEATED_USE_OF_WEAK}
        ${WATTRIBUTE_ALIAS_2}
        ${WBAD_FUNCTION_CAST}
        ${WBITWISE_OP_PARENTHESES}
        ${WBOOL_OPERATION}
        ${WCAST_ALIGN}
        ${WCAST_QUAL}
        ${WCOMMA}
        ${WCOMMENT}
        ${WCOMPOUND_TOKEN_SPLIT_BY_SPACE}
        ${WCONDITIONAL_UNITIALIZED}
        ${WCONVERSION}
        ${WCONSUMED}
        ${WDANGLING_ELSE}
        ${WDEPRECATED}
        ${WDUPLICATE_DECL_SPECIFIER}
        ${WDUPLICATED_BRANCHES}
        ${WDUPLICATED_COND}
        ${WEXTRA_SEMI_STMT}
        ${WFOR_LOOP_ANALYSIS}
        ${WFOUR_CHAR_CONSTANTS}
        ${WFRAME_ADDRESS}
        ${WIDIOMATIC_PARENTHESES}
        ${WIGNORED_QUALIFIERS}
        -Wimplicit-function-declaration
        ${WIMPLICIT_INT}
        ${WIMPLICIT_INT_CONVERSION}
        ${WINCOMPATIBLE_FUNCTION_POINTER_TYPES_STRICT}
        ${WINFINITE_RECURSION}
        ${WINT_IN_BOOL_CONTEXT}
        ${WINVALID_UTF8}
        ${WLOGICAL_OP}
        ${WLOGICAL_OP_PARENTHESES}
        ${WMAIN}
        ${WMISLEADING_INDENTATION}
        ${WMISLEADING_BRACES}
        ${WMISSING_FIELD_INITIALIZERS}
        ${WMISSING_VARIABLE_DECLARATIONS}
        ${WNEWLINE_EOF}
        ${WNONPORTABLE_SYSTEM_INCLUDE_PATH}
        ${WNORMALIZED}
        ${WNULL_DEREFERENCE}
        ${WNULL_POINTER_ARITHMETIC}
        ${WNULL_POINTER_SUBTRACTION}
        ${WNULLABLE_TO_NONNULL_CONVERSION}
        ${WOVER_ALIGNED}
        ${WPACKED}
        ${WPACKED_NON_POD}
        ${WPARENTHESES}
        ${WPOINTER_ARITH}
        ${WPRAGMA_PACK}
        ${WPROFILE_INSTR_MISSING}
        ${WREDUNDANT_DECLS}
        ${WREDUNDANT_PARENS}
        ${WSELF_ASSIGN}
        ${WSELF_ASSIGN_OVERLOADED}
        ${WSELF_MOVE}
        ${WSHADOW_UNCAPTURED_LOCAL}
        ${WSHIFT_OVERFLOW_2}
        ${WSHIFT_SIGN_OVERFLOW}
        ${WSHORTEN_64_TO_32}
        ${WSIGN_COMPARE}
        ${WSIGN_CONVERSION}
        ${WSTRICT_FLEX_ARRAYS}
        ${WSTRICT_OVERFLOW_4}
        ${WSTRICT_PROTOTYPES}
        ${WSUGGEST_ATTRIBUTE_COLD}
        ${WSUGGEST_ATTRIBUTE_CONST}
        ${WSUGGEST_ATTRIBUTE_NORETURN}
        ${WSUGGEST_ATTRIBUTE_PURE}
        ${WTAUTOLOGICAL_BITWISE_COMPARE}
        ${WTAUTOLOGICAL_COMPARE}
        ${WTAUTOLOGICAL_OVERLAP_COMPARE}
        ${WTAUTOLOGICAL_TYPE_LIMIT_COMPARE}
        ${WTAUTOLOGICAL_UNSIGNED_CHAR_ZERO_COMPARE}
        ${WTAUTOLOGICAL_UNSIGNED_ZERO_COMPARE}
        ${WTAUTOLOGICAL_VALUE_RANGE_COMPARE}
        ${WTRAMPOLINES}
        ${WTRIVIAL_AUTO_VAR_INIT}
        ${WUNDEF}
        ${WUNDEF_PREFIX}
        ${WUNINITIALIZED}
        ${WUNGUARDED_AVAILABILITY}
        ${WUNKNOWN_PRAGMAS}
        ${WUNNEEDED_INTERNAL_DECLARATION}
        ${WUNREACHABLE_CODE}
        ${WUNREACHABLE_CODE_BREAK}
        ${WUNREACHABLE_CODE_RETURN}
        ${WUNSAFE_BUFFER_USAGE}
        ${WUNSAFE_LOOP_OPTIMIZATIONS}
        ${WUNUSED_COMMAND_LINE_ARGUMENT}
        ${WUNUSED_COMPARISON}
        ${WUNUSED_CONST_VARIABLE_2}
        ${WUNUSED_FUNCTION}
        ${WUNUSED_LABEL}
        ${WUNUSED_LOCAL_TYPEDEF}
        ${WUNUSED_MACROS}
        ${WUSED_BUT_MARKED_UNUSED}
    )
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_common_asciiz COMPILE_OPTIONS)
    bb_process_common_flag_availability(
        FLAG -Woverlength-strings
        FALLBACK ""
        OPTION WOVERLENGTH_STRINGS
    )
    bb_process_common_flag_availability(
        FLAG -Wstring-concatenation
        FALLBACK ""
        OPTION WSTRING_CONCATENATION
    )
    bb_process_common_flag_availability(
        FLAG -Wstring-conversion
        FALLBACK ""
        OPTION WSTRING_CONVERSION
    )

    unset(_BB_WARNINGS)
    list(APPEND _BB_WARNINGS
        ${WOVERLENGTH_STRINGS}
        ${WSTRING_CONCATENATION}
        ${WSTRING_CONVERSION}
    )
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_common_alloc COMPILE_OPTIONS)
    bb_process_common_flag_availability(
        FLAG -Walloc-zero
        FALLBACK ""
        OPTION WALLOC_ZERO
    )
    bb_process_common_flag_availability(
        FLAG -Wsuggest-attribute=malloc
        FALLBACK ""
        OPTION WSUGGEST_ATTRIBUTE_MALLOC
    )

    unset(_BB_WARNINGS)
    list(APPEND _BB_WARNINGS
        ${WALLOC_ZERO}
        ${WSUGGEST_ATTRIBUTE_MALLOC}
    )
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_common_array COMPILE_OPTIONS)
    bb_process_common_flag_availability(
        FLAG -Warray-bounds-pointer-arithmetic
        FALLBACK ""
        OPTION WARRAY_BOUNDS_POINTER_ARITHMETIC
    )
    bb_process_common_flag_availability(
        FLAG -Warray-parameter
        FALLBACK ""
        OPTION WARRAY_PARAMETER
    )
    bb_process_common_flag_availability(
        FLAG -Wchar-subscripts
        FALLBACK ""
        OPTION WCHAR_SUBSCRIPTS
    )
    bb_process_common_flag_availability(
        FLAG -Wflexible-array-extensions
        FALLBACK ""
        OPTION WFLEXIBLE_ARRAY_EXTENSIONS
    )
    bb_process_common_flag_availability(
        FLAG -Wzero-length-bounds
        FALLBACK ""
        OPTION WZERO_LENGTH_BOUNDS
    )

    unset(_BB_WARNINGS)
    list(APPEND _BB_WARNINGS
        ${WARRAY_BOUNDS_POINTER_ARITHMETIC}
        ${WARRAY_PARAMETER}
        ${WCHAR_SUBSCRIPTS}
        ${WFLEXIBLE_ARRAY_EXTENSIONS}
        ${WZERO_LENGTH_BOUNDS}
    )
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_common_cuda COMPILE_OPTIONS)
    bb_process_common_flag_availability(
        FLAG -Wcuda-compat
        FALLBACK ""
        OPTION WCUDA_COMPAT
    )

    unset(_BB_WARNINGS)
    list(APPEND _BB_WARNINGS
        ${WCUDA_COMPAT}
    )
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_common_documentation COMPILE_OPTIONS)
    bb_process_common_flag_availability(
        FLAG -Wdocumentation
        FALLBACK ""
        OPTION WDOCUMENTATION
    )
    bb_process_common_flag_availability(
        FLAG -Wdocumentation-unknown-command
        FALLBACK ""
        OPTION WDOCUMENTATION_UNKNOWN_COMMAND
    )

    unset(_BB_WARNINGS)
    list(APPEND _BB_WARNINGS
        ${WDOCUMENTATION}
        ${WDOCUMENTATION_UNKNOWN_COMMAND}
    )
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_common_enum COMPILE_OPTIONS)
    bb_process_common_flag_availability(
        FLAG -Wanon-enum-enum-conversion
        FALLBACK ""
        OPTION WANON_ENUM_ENUM_CONVERSION
    )
    bb_process_common_flag_availability(
        FLAG -Wassign-enum
        FALLBACK ""
        OPTION WASSIGN_ENUM
    )
    bb_process_common_flag_availability(
        FLAG -Wbitfield-enum-conversion
        FALLBACK ""
        OPTION WBITFIELD_ENUM_CONVERSION
    )
    bb_process_common_flag_availability(
        FLAG -Wduplicate-enum
        FALLBACK ""
        OPTION WDUPLICATE_ENUM
    )
    bb_process_common_flag_availability(
        FLAG -Wenum-conversion
        FALLBACK ""
        OPTION WENUM_CONVERSION
    )
    bb_process_common_flag_availability(
        FLAG -Wsigned-enum-bitfield
        FALLBACK ""
        OPTION WSIGNED_ENUM_BITFIELD
    )
    bb_process_common_flag_availability(
        FLAG -Wtautological-unsigned-enum-zero-compare
        FALLBACK ""
        OPTION WTAUTOLOGICAL_UNSIGNED_ENUM_ZERO_COMPARE
    )

    unset(_BB_WARNINGS)
    list(APPEND _BB_WARNINGS
        ${WANON_ENUM_ENUM_CONVERSION}
        ${WASSIGN_ENUM}
        ${WBITFIELD_ENUM_CONVERSION}
        ${WDUPLICATE_ENUM}
        ${WENUM_CONVERSION}
        ${WSIGNED_ENUM_BITFIELD}
        ${WTAUTOLOGICAL_UNSIGNED_ENUM_ZERO_COMPARE}
    )
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_common_format COMPILE_OPTIONS)
    bb_process_common_flag_availability(
        FLAG -Wcstring-format-directive
        FALLBACK ""
        OPTION WCSTRING_FORMAT_DIRECTIVE
    )
    bb_process_common_flag_availability(
        FLAG -Wformat=2
        FALLBACK ""
        OPTION WFORMAT_2
    )
    bb_process_common_flag_availability(
        FLAG -Wformat-overflow=2
        FALLBACK ""
        OPTION WFORMAT_OVERFLOW_2
    )
    bb_process_common_flag_availability(
        FLAG -Wformat-pedantic
        FALLBACK ""
        OPTION WFORMAT_PEDANTIC
    )
    bb_process_common_flag_availability(
        FLAG -Wformat-signedness
        FALLBACK ""
        OPTION WFORMAT_SIGNEDNESS
    )
    bb_process_common_flag_availability(
        FLAG -Wformat-truncation=2
        FALLBACK ""
        OPTION WFORMAT_TRUNCATION_2
    )
    bb_process_common_flag_availability(
        FLAG -Wformat-type-confusion
        FALLBACK ""
        OPTION WFORMAT_TYPE_CONFUSION
    )
    bb_process_common_flag_availability(
        FLAG -Wformat-y2k
        FALLBACK ""
        OPTION WFORMAT_Y2K
    )
    bb_process_common_flag_availability(
        FLAG -Wsuggest-attribute=format
        FALLBACK ""
        OPTION WSUGGEST_ATTRIBUTE_FORMAT
    )

    unset(_BB_WARNINGS)
    list(APPEND _BB_WARNINGS
        ${WCSTRING_FORMAT_DIRECTIVE}
        ${WFORMAT_2}
        ${WFORMAT_OVERFLOW_2}
        ${WFORMAT_PEDANTIC}
        ${WFORMAT_SIGNEDNESS}
        ${WFORMAT_TRUNCATION_2}
        ${WFORMAT_TYPE_CONFUSION}
        ${WFORMAT_Y2K}
        ${WSUGGEST_ATTRIBUTE_FORMAT}
    )
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_common_float COMPILE_OPTIONS)
    bb_process_common_flag_availability(
        FLAG -Wdouble-promotion
        FALLBACK ""
        OPTION WDOUBLE_PROMOTION
    )
    bb_process_common_flag_availability(
        FLAG -Wfloat-equal
        FALLBACK ""
        OPTION WFLOAT_EQUAL
    )
    bb_process_common_flag_availability(
        FLAG -Wfloat-overflow-conversion
        FALLBACK ""
        OPTION WFLOAT_OVERFLOW_CONVERSION
    )
    bb_process_common_flag_availability(
        FLAG -Wfloat-zero-conversion
        FALLBACK ""
        OPTION WFLOAT_ZERO_CONVERSION
    )
    bb_process_common_flag_availability(
        FLAG -Wimplicit-float-conversion
        FALLBACK ""
        OPTION WIMPLICIT_FLOAT_CONVERSION
    )
    bb_process_common_flag_availability(
        FLAG -Wimplicit-int-float-conversion
        FALLBACK ""
        OPTION WIMPLICIT_INT_FLOAT_CONVERSION
    )
    bb_process_common_flag_availability(
        FLAG -Wunsuffixed-float-constants
        FALLBACK ""
        OPTION WUNSUFFIXED_FLOAT_CONSTANTS
    )

    unset(_BB_WARNINGS)
    list(APPEND _BB_WARNINGS
        ${WDOUBLE_PROMOTION}
        ${WFLOAT_EQUAL}
        ${WFLOAT_OVERFLOW_CONVERSION}
        ${WFLOAT_ZERO_CONVERSION}
        ${WIMPLICIT_FLOAT_CONVERSION}
        ${WIMPLICIT_INT_FLOAT_CONVERSION}
        ${WUNSUFFIXED_FLOAT_CONSTANTS}
    )
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_common_opencl COMPILE_OPTIONS)
    bb_process_common_flag_availability(
        FLAG -Wpedantic-core-features
        FALLBACK ""
        OPTION WPEDANTIC_CORE_FEATURES
    )

    unset(_BB_WARNINGS)
    list(APPEND _BB_WARNINGS
        ${WPEDANTIC_CORE_FEATURES}
    )
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_common_openmp COMPILE_OPTIONS)
    bb_process_common_flag_availability(
        FLAG -Wopenmp
        FALLBACK ""
        OPTION WOPENMP
    )
    bb_process_common_flag_availability(
        FLAG -Wopenmp-simd
        FALLBACK ""
        OPTION WOPENMP_SIMD
    )
    bb_process_common_flag_availability(
        FLAG -Wsource-uses-openmp
        FALLBACK ""
        OPTION WSOURCE_USES_OPENMP
    )

    unset(_BB_WARNINGS)
    list(APPEND _BB_WARNINGS
        ${WOPENMP}
        ${WOPENMP_SIMD}
        ${WSOURCE_USES_OPENMP}
    )
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_common_preprocessor COMPILE_OPTIONS)
    bb_process_common_flag_availability(
        FLAG -Wdisabled-macro-expansion
        FALLBACK ""
        OPTION WDISABLED_MACRO_EXPANSION
    )
    bb_process_common_flag_availability(
        FLAG -Wembedded-directive
        FALLBACK ""
        OPTION WEMBEDDED_DIRECTIVE
    )
    bb_process_common_flag_availability(
        FLAG -Wexpansion-to-defined
        FALLBACK ""
        OPTION WEXPANSION_TO_DEFINED
    )
    bb_process_common_flag_availability(
        FLAG -Wkeyword-macro
        FALLBACK ""
        OPTION WKEYWORD_MACRO
    )
    bb_process_common_flag_availability(
        FLAG -Wreserved-macro-identifier
        FALLBACK ""
        OPTION WRESERVED_MACRO_IDENTIFIER
    )

    unset(_BB_WARNINGS)
    list(APPEND _BB_WARNINGS
        ${WDISABLED_MACRO_EXPANSION}
        ${WEMBEDDED_DIRECTIVE}
        ${WEXPANSION_TO_DEFINED}
        ${WKEYWORD_MACRO}
        ${WRESERVED_MACRO_IDENTIFIER}
    )
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_common_simd COMPILE_OPTIONS)
    bb_process_common_flag_availability(
        FLAG -Wvector-operation-performance
        FALLBACK ""
        OPTION WVECTOR_OPERATION_PERFORMANCE
    )

    unset(_BB_WARNINGS)
    list(APPEND _BB_WARNINGS
        -Wvector-operation-performance
    )
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_common_spirv COMPILE_OPTIONS)
    bb_process_common_flag_availability(
        FLAG -Wspir-compat
        FALLBACK ""
        OPTION WSPIR_COMPAT
    )

    unset(_BB_WARNINGS)
    list(APPEND _BB_WARNINGS
        ${WSPIR_COMPAT}
    )
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_common_switch COMPILE_OPTIONS)
    bb_process_common_flag_availability(
        FLAG -Wcovered-switch-default
        FALLBACK ""
        OPTION WCOVERED_SWITCH_DEFAULT
    )
    bb_process_common_flag_availability(
        FLAG -Wimplicit-fallthrough=5
        FALLBACK ""
        OPTION WIMPLICIT_FALLTHROUGH_5
    )
    bb_process_common_flag_availability(
        FLAG -Wimplicit-fallthrough-per-function
        FALLBACK ""
        OPTION WIMPLICIT_FALLTHROUGH_PER_FUNCTION
    )
    bb_process_common_flag_availability(
        FLAG -Wswitch-default
        FALLBACK ""
        OPTION WSWITCH_DEFAULT
    )
    bb_process_common_flag_availability(
        FLAG -Wswitch-enum
        FALLBACK ""
        OPTION WSWITCH_ENUM
    )

    unset(_BB_WARNINGS)
    list(APPEND _BB_WARNINGS
        ${WCOVERED_SWITCH_DEFAULT}
        ${WIMPLICIT_FALLTHROUGH_5}
        ${WIMPLICIT_FALLTHROUGH_PER_FUNCTION}
        ${WSWITCH_DEFAULT}
        ${WSWITCH_ENUM}
    )
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_common_threads COMPILE_OPTIONS)
    bb_process_common_flag_availability(
        FLAG -Watomic-implicit-seq-cst
        FALLBACK ""
        OPTION WATOMIC_IMPLICIT_SEQ_CST
    )
    bb_process_common_flag_availability(
        FLAG -Wcustom-atomic-properties
        FALLBACK ""
        OPTION WCUSTOM_ATOMIC_PROPERTIES
    )
    bb_process_common_flag_availability(
        FLAG -Wimplicit-atomic-properties
        FALLBACK ""
        OPTION WIMPLICIT_ATOMIC_PROPERTIES
    )
    bb_process_common_flag_availability(
        FLAG -Wthread-safety-analysis
        FALLBACK ""
        OPTION WTHREAD_SAFETY_ANALYSIS
    )
    bb_process_common_flag_availability(
        FLAG -Wthread-safety-attributes
        FALLBACK ""
        OPTION WTHREAD_SAFETY_ATTRIBUTES
    )
    bb_process_common_flag_availability(
        FLAG -Wthread-safety-negative
        FALLBACK ""
        OPTION WTHREAD_SAFETY_NEGATIVE
    )
    bb_process_common_flag_availability(
        FLAG -Wthread-safety-precise
        FALLBACK ""
        OPTION WTHREAD_SAFETY_PRECISE
    )
    bb_process_common_flag_availability(
        FLAG -Wthread-safety-reference
        FALLBACK ""
        OPTION WTHREAD_SAFETY_REFERENCE
    )

    unset(_BB_WARNINGS)
    list(APPEND _BB_WARNINGS
        ${WATOMIC_IMPLICIT_SEQ_CST}
        ${WCUSTOM_ATOMIC_PROPERTIES}
        ${WIMPLICIT_ATOMIC_PROPERTIES}
        ${WTHREAD_SAFETY_ANALYSIS}
        ${WTHREAD_SAFETY_ATTRIBUTES}
        ${WTHREAD_SAFETY_NEGATIVE}
        ${WTHREAD_SAFETY_PRECISE}
        ${WTHREAD_SAFETY_REFERENCE}
    )
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_c_basic COMPILE_OPTIONS)
    bb_add_more_warnings_common_basic(${COMPILE_OPTIONS})

    bb_process_c_flag_availability(
        FLAG -Wnested-externs
        FALLBACK ""
        OPTION WNESTED_EXTERNS
    )
    bb_process_c_flag_availability(
        FLAG -Wold-style-definition
        FALLBACK ""
        OPTION WOLD_STYLE_DEFINITION
    )

    unset(_BB_WARNINGS)
    list(APPEND _BB_WARNINGS
        ${WNESTED_EXTERNS}
        ${WOLD_STYLE_DEFINITION}
    )
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_c_asciiz COMPILE_OPTIONS)
    bb_add_more_warnings_common_asciiz(${COMPILE_OPTIONS})
    unset(_BB_WARNINGS)
    list(APPEND _BB_WARNINGS
        -Wwrite-strings
    )
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_c_alloc COMPILE_OPTIONS)
    bb_add_more_warnings_common_alloc(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_c_array COMPILE_OPTIONS)
    bb_add_more_warnings_common_array(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_c_c89 COMPILE_OPTIONS)
    bb_process_common_flag_availability(
        FLAG -ansi
        FALLBACK ""
        OPTION ANSI
    )
    bb_process_common_flag_availability(
        FLAG -Wbit-int-extension
        FALLBACK ""
        OPTION WBIT_INT_EXTENSION
    )
    bb_process_common_flag_availability(
        FLAG -Wc++-compat
        FALLBACK ""
        OPTION WCXX_COMPAT
    )
    bb_process_common_flag_availability(
        FLAG -Wc11-extensions
        FALLBACK ""
        OPTION WC11_EXTENSIONS
    )
    bb_process_common_flag_availability(
        FLAG -Wc2x-extensions
        FALLBACK ""
        OPTION WC2X_EXTENSIONS
    )
    bb_process_common_flag_availability(
        FLAG -Wc99-designator
        FALLBACK ""
        OPTION WC99_DESIGNATOR
    )
    bb_process_common_flag_availability(
        FLAG -Wc99-extensions
        FALLBACK ""
        OPTION WC99_EXTENSIONS
    )
    bb_process_common_flag_availability(
        FLAG -Wcomplex-component-init
        FALLBACK ""
        OPTION WCOMPLEX_COMPONENT_INIT
    )
    bb_process_common_flag_availability(
        FLAG -Wdeclaration-after-statement
        FALLBACK ""
        OPTION WDECLARATION_AFTER_STATEMENT
    )
    bb_process_common_flag_availability(
        FLAG -Wdelimited-escape-sequence-extension
        FALLBACK ""
        OPTION WDELIMITED_ESCAPE_SEQUENCE_EXTENSION
    )
    bb_process_common_flag_availability(
        FLAG -Wdollar-in-identifier-extension
        FALLBACK ""
        OPTION WDOLLAR_IN_IDENTIFIER_EXTENSION
    )
    bb_process_common_flag_availability(
        FLAG -Wempty-translation-unit
        FALLBACK ""
        OPTION WEMPTY_TRANSLATION_UNIT
    )
    bb_process_common_flag_availability(
        FLAG -Wfixed-enum-extension
        FALLBACK ""
        OPTION WFIXED_ENUM_EXTENSION
    )
    bb_process_common_flag_availability(
        FLAG -Wformat-non-iso
        FALLBACK ""
        OPTION WFORMAT_NON_ISO
    )
    bb_process_common_flag_availability(
        FLAG -Wgcc-compat
        FALLBACK ""
        OPTION WGCC_COMPAT
    )
    bb_process_common_flag_availability(
        FLAG -Wgnu
        FALLBACK ""
        OPTION WGNU
    )
    bb_process_common_flag_availability(
        FLAG -Wimport-preprocessor-directive-pedantic
        FALLBACK ""
        OPTION WIMPORT_PREPROCESSOR_DIRECTIVE_PEDANTIC
    )
    bb_process_common_flag_availability(
        FLAG -Wlanguage-extension-token
        FALLBACK ""
        OPTION WLANGUAGE_EXTENSION_TOKEN
    )
    bb_process_common_flag_availability(
        FLAG -Wlong-long
        FALLBACK ""
        OPTION WLONG_LONG
    )
    bb_process_common_flag_availability(
        FLAG -Wmicrosoft
        FALLBACK ""
        OPTION WMICROSOFT
    )
    bb_process_common_flag_availability(
        FLAG -Wnested-anon-types
        FALLBACK ""
        OPTION WNESTED_ANON_TYPES
    )
    bb_process_common_flag_availability(
        FLAG -Wnullability-extension
        FALLBACK ""
        OPTION WNULLABILITY_EXTENSION
    )
    bb_process_common_flag_availability(
        FLAG -Wpedantic
        FALLBACK ""
        OPTION WPEDANTIC
    )
    bb_process_common_flag_availability(
        FLAG -Wvariadic-macros
        FALLBACK ""
        OPTION WVARIADIC_MACROS
    )
    bb_process_common_flag_availability(
        FLAG -Wvla
        FALLBACK ""
        OPTION WVLA
    )
    bb_process_common_flag_availability(
        FLAG -Wzero-length-array
        FALLBACK ""
        OPTION WZERO_LENGTH_ARRAY
    )

    unset(_BB_WARNINGS)
    list(APPEND _BB_WARNINGS
        ${ANSI}
        ${WBIT_INT_EXTENSION}
        ${WCXX_COMPAT}
        ${WC11_EXTENSIONS}
        ${WC2X_EXTENSIONS}
        ${WC99_DESIGNATOR}
        ${WC99_EXTENSIONS}
        ${WCOMPLEX_COMPONENT_INIT}
        ${WDECLARATION_AFTER_STATEMENT}
        ${WDELIMITED_ESCAPE_SEQUENCE_EXTENSION}
        ${WDOLLAR_IN_IDENTIFIER_EXTENSION}
        ${WEMPTY_TRANSLATION_UNIT}
        ${WFIXED_ENUM_EXTENSION}
        ${WFORMAT_NON_ISO}
        ${WGCC_COMPAT}
        ${WGNU}
        ${WIMPORT_PREPROCESSOR_DIRECTIVE_PEDANTIC}
        ${WLANGUAGE_EXTENSION_TOKEN}
        ${LONG_LONG}
        ${WMICROSOFT}
        ${WNESTED_ANON_TYPES}
        ${WNULLABILITY_EXTENSION}
        ${WPEDANTIC}
        ${WVARIADIC_MACROS}
        ${WVLA}
        ${WZERO_LENGTH_ARRAY}
    )
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_c_cuda COMPILE_OPTIONS)
    bb_add_more_warnings_common_cuda(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_c_documentation COMPILE_OPTIONS)
    bb_add_more_warnings_common_documentation(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_c_enum COMPILE_OPTIONS)
    bb_add_more_warnings_common_enum(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_c_format COMPILE_OPTIONS)
    bb_add_more_warnings_common_format(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_c_float COMPILE_OPTIONS)
    bb_add_more_warnings_common_float(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_c_opencl COMPILE_OPTIONS)
    bb_add_more_warnings_common_opencl(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_c_openmp COMPILE_OPTIONS)
    bb_add_more_warnings_common_openmp(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_c_preprocessor COMPILE_OPTIONS)
    bb_add_more_warnings_common_preprocessor(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_c_simd COMPILE_OPTIONS)
    bb_add_more_warnings_common_simd(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_c_spirv COMPILE_OPTIONS)
    bb_add_more_warnings_common_spirv(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_c_switch COMPILE_OPTIONS)
    bb_add_more_warnings_common_switch(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_c_threads COMPILE_OPTIONS)
    bb_add_more_warnings_common_threads(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_cxx_basic COMPILE_OPTIONS)
    unset(_BB_WARNINGS)
    list(APPEND _BB_WARNINGS
        -Wredundant-move
        -Wzero-as-null-pointer-constant
    )
    bb_add_more_warnings_common_basic(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_cxx_asciiz COMPILE_OPTIONS)
    bb_add_more_warnings_common_asciiz(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_cxx_alloc COMPILE_OPTIONS)
    bb_add_more_warnings_common_alloc(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_cxx_array COMPILE_OPTIONS)
    bb_add_more_warnings_common_array(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_cxx_cuda COMPILE_OPTIONS)
    bb_add_more_warnings_common_cuda(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_cxx_documentation COMPILE_OPTIONS)
    bb_add_more_warnings_common_documentation(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_cxx_enum COMPILE_OPTIONS)
    bb_add_more_warnings_common_enum(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_cxx_format COMPILE_OPTIONS)
    bb_add_more_warnings_common_format(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_cxx_float COMPILE_OPTIONS)
    bb_add_more_warnings_common_float(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_cxx_opencl COMPILE_OPTIONS)
    bb_add_more_warnings_common_opencl(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_cxx_openmp COMPILE_OPTIONS)
    bb_add_more_warnings_common_openmp(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_cxx_preprocessor COMPILE_OPTIONS)
    bb_add_more_warnings_common_preprocessor(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_cxx_simd COMPILE_OPTIONS)
    bb_add_more_warnings_common_simd(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_cxx_spirv COMPILE_OPTIONS)
    bb_add_more_warnings_common_spirv(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_cxx_switch COMPILE_OPTIONS)
    bb_add_more_warnings_common_switch(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_cxx_threads COMPILE_OPTIONS)
    bb_add_more_warnings_common_threads(${COMPILE_OPTIONS})
    set(${COMPILE_OPTIONS} "${${COMPILE_OPTIONS}};${_BB_WARNINGS}" PARENT_SCOPE)
endfunction()

function(bb_add_more_warnings_cxx_template COMPILE_OPTIONS)
    unset(_BB_WARNINGS)
    list(APPEND _BB_WARNINGS
        -Wctad-maybe-unsupported
        -Wlocal-type-template-args
        -Wundefined-func-template
        -Wunnamed-type-template-args
        -Wunused-template
    )
    set(
        ${COMPILE_OPTIONS}
        "${${COMPILE_OPTIONS}};${_BB_WARNINGS}"
        PARENT_SCOPE
    )
endfunction()

function(bb_add_more_warnings_cxx_virtual COMPILE_OPTIONS)
    unset(_BB_WARNINGS)
    list(APPEND _BB_WARNINGS
        -Wabstract-vbase-init
        -Wdelete-non-abstract-non-virtual-dtor
        -Wnon-virtual-dtor
        -Woverloaded-virtual
        -Wweak-vtables
    )
    set(
        ${COMPILE_OPTIONS}
        "${${COMPILE_OPTIONS}};${_BB_WARNINGS}"
        PARENT_SCOPE
    )
endfunction()

# bb_add_more_warnings(LANG {C|C++} CATEGORIES <option1>[ <option2> [...]] OPTIONS <compiler_options_var>)
# Common options:
#   alloc
#   array
#   asciiz
#   basic
#   cuda
#   documentation
#   enum
#   format
#   float
#   opencl
#   openmp
#   preprocessor
#   simd
#   spirv
#   switch
#   threads
# C options:
#   c89
# C++ options:
#   template
#   virtual
function(bb_add_more_warnings)
    if(NOT BB_MORE_WARNINGS)
        return()
    endif()

    set(oneValueArgs LANG OPTIONS)
    set(multiValueArgs CATEGORIES)

    cmake_parse_arguments(_BB_ADD_MORE_WARNINGS "" "${oneValueArgs}"
        "${multiValueArgs}" ${ARGN})

    if (${_BB_ADD_MORE_WARNINGS_LANG} STREQUAL C)
        foreach(_CATEGORY IN LISTS _BB_ADD_MORE_WARNINGS_CATEGORIES)
            cmake_language(CALL
                bb_add_more_warnings_c_${_CATEGORY}
                ${_BB_ADD_MORE_WARNINGS_OPTIONS})
        endforeach()
    endif()
    if (LANG STREQUAL C++)
        foreach(_CATEGORY IN LISTS _BB_ADD_MORE_WARNINGS_CATEGORIES)
            cmake_language(CALL
                bb_add_more_warnings_cxx_${_CATEGORY}
                ${_BB_ADD_MORE_WARNINGS_OPTIONS})
        endforeach()
    endif()

    set(${_BB_ADD_MORE_WARNINGS_OPTIONS}
        ${${_BB_ADD_MORE_WARNINGS_OPTIONS}} PARENT_SCOPE)
endfunction()
