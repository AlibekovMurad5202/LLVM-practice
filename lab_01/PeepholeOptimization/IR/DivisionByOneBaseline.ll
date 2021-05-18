; ModuleID = 'DivisionByOneSample.cpp'
source_filename = "DivisionByOneSample.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%"struct.std::chrono::duration" = type { double }
%"struct.std::chrono::time_point" = type { %"struct.std::chrono::duration.0" }
%"struct.std::chrono::duration.0" = type { i64 }

$_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE = comdat any

$_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE = comdat any

$_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEpLERKS3_ = comdat any

$_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv = comdat any

$_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE = comdat any

$_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv = comdat any

$_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_ = comdat any

$_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_ = comdat any

$_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv = comdat any

$_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_DivisionByOneSample.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
entry:
  %retval = alloca i32, align 4
  %num_0 = alloca i64, align 8
  %num_1 = alloca i64, align 8
  %num_2 = alloca i64, align 8
  %num_3 = alloca i64, align 8
  %num_4 = alloca i64, align 8
  %num_5 = alloca i64, align 8
  %num_6 = alloca i64, align 8
  %num_7 = alloca i64, align 8
  %num_8 = alloca i64, align 8
  %num_9 = alloca i64, align 8
  %time = alloca %"struct.std::chrono::duration", align 8
  %i = alloca i64, align 8
  %start = alloca %"struct.std::chrono::time_point", align 8
  %finish = alloca %"struct.std::chrono::time_point", align 8
  %ref.tmp = alloca %"struct.std::chrono::duration", align 8
  %ref.tmp14 = alloca %"struct.std::chrono::duration.0", align 8
  store i32 0, i32* %retval, align 4
  store i64 0, i64* %num_0, align 8
  store i64 1, i64* %num_1, align 8
  store i64 2, i64* %num_2, align 8
  store i64 3, i64* %num_3, align 8
  store i64 4, i64* %num_4, align 8
  store i64 5, i64* %num_5, align 8
  store i64 6, i64* %num_6, align 8
  store i64 7, i64* %num_7, align 8
  store i64 8, i64* %num_8, align 8
  store i64 9, i64* %num_9, align 8
  %0 = bitcast %"struct.std::chrono::duration"* %time to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 8, i1 false)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %1, 150000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #3
  %coerce.dive = getelementptr inbounds %"struct.std::chrono::time_point", %"struct.std::chrono::time_point"* %start, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %coerce.dive, i32 0, i32 0
  store i64 %call, i64* %coerce.dive1, align 8
  %2 = load i64, i64* %num_0, align 8
  %div = sdiv i64 %2, 1
  store i64 %div, i64* %num_0, align 8
  %3 = load i64, i64* %num_1, align 8
  %div2 = sdiv i64 %3, 1
  store i64 %div2, i64* %num_1, align 8
  %4 = load i64, i64* %num_2, align 8
  %div3 = sdiv i64 %4, 1
  store i64 %div3, i64* %num_2, align 8
  %5 = load i64, i64* %num_3, align 8
  %div4 = sdiv i64 %5, 1
  store i64 %div4, i64* %num_3, align 8
  %6 = load i64, i64* %num_4, align 8
  %div5 = sdiv i64 %6, 1
  store i64 %div5, i64* %num_4, align 8
  %7 = load i64, i64* %num_5, align 8
  %div6 = sdiv i64 %7, 1
  store i64 %div6, i64* %num_5, align 8
  %8 = load i64, i64* %num_6, align 8
  %div7 = sdiv i64 %8, 1
  store i64 %div7, i64* %num_6, align 8
  %9 = load i64, i64* %num_7, align 8
  %div8 = sdiv i64 %9, 1
  store i64 %div8, i64* %num_7, align 8
  %10 = load i64, i64* %num_8, align 8
  %div9 = sdiv i64 %10, 1
  store i64 %div9, i64* %num_8, align 8
  %11 = load i64, i64* %num_9, align 8
  %div10 = sdiv i64 %11, 1
  store i64 %div10, i64* %num_9, align 8
  %call11 = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #3
  %coerce.dive12 = getelementptr inbounds %"struct.std::chrono::time_point", %"struct.std::chrono::time_point"* %finish, i32 0, i32 0
  %coerce.dive13 = getelementptr inbounds %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %coerce.dive12, i32 0, i32 0
  store i64 %call11, i64* %coerce.dive13, align 8
  %call15 = call i64 @_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%"struct.std::chrono::time_point"* nonnull align 8 dereferenceable(8) %finish, %"struct.std::chrono::time_point"* nonnull align 8 dereferenceable(8) %start)
  %coerce.dive16 = getelementptr inbounds %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %ref.tmp14, i32 0, i32 0
  store i64 %call15, i64* %coerce.dive16, align 8
  %call17 = call double @_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%"struct.std::chrono::duration.0"* nonnull align 8 dereferenceable(8) %ref.tmp14)
  %coerce.dive18 = getelementptr inbounds %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %ref.tmp, i32 0, i32 0
  store double %call17, double* %coerce.dive18, align 8
  %call19 = call nonnull align 8 dereferenceable(8) %"struct.std::chrono::duration"* @_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEpLERKS3_(%"struct.std::chrono::duration"* %time, %"struct.std::chrono::duration"* nonnull align 8 dereferenceable(8) %ref.tmp)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i64, i64* %i, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i64, i64* %num_0, align 8
  %call20 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEl(%"class.std::basic_ostream"* @_ZSt4cout, i64 %13)
  %call21 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call20, i8 signext 32)
  %14 = load i64, i64* %num_1, align 8
  %call22 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEl(%"class.std::basic_ostream"* %call21, i64 %14)
  %call23 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call22, i8 signext 32)
  %15 = load i64, i64* %num_2, align 8
  %call24 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEl(%"class.std::basic_ostream"* %call23, i64 %15)
  %call25 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call24, i8 signext 32)
  %16 = load i64, i64* %num_3, align 8
  %call26 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEl(%"class.std::basic_ostream"* %call25, i64 %16)
  %call27 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call26, i8 signext 32)
  %17 = load i64, i64* %num_4, align 8
  %call28 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEl(%"class.std::basic_ostream"* %call27, i64 %17)
  %call29 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call28, i8 signext 32)
  %18 = load i64, i64* %num_5, align 8
  %call30 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEl(%"class.std::basic_ostream"* %call29, i64 %18)
  %call31 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call30, i8 signext 32)
  %19 = load i64, i64* %num_6, align 8
  %call32 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEl(%"class.std::basic_ostream"* %call31, i64 %19)
  %call33 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call32, i8 signext 32)
  %20 = load i64, i64* %num_7, align 8
  %call34 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEl(%"class.std::basic_ostream"* %call33, i64 %20)
  %call35 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call34, i8 signext 32)
  %21 = load i64, i64* %num_8, align 8
  %call36 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEl(%"class.std::basic_ostream"* %call35, i64 %21)
  %call37 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call36, i8 signext 32)
  %22 = load i64, i64* %num_9, align 8
  %call38 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEl(%"class.std::basic_ostream"* %call37, i64 %22)
  %call39 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call38, i8 signext 10)
  %call40 = call double @_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv(%"struct.std::chrono::duration"* %time)
  %call41 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* @_ZSt4cout, double %call40)
  %call42 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call41, i8 signext 10)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare dso_local i64 @_ZNSt6chrono3_V212system_clock3nowEv() #2

; Function Attrs: noinline uwtable
define linkonce_odr dso_local double @_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%"struct.std::chrono::duration.0"* nonnull align 8 dereferenceable(8) %__d) #6 comdat {
entry:
  %retval = alloca %"struct.std::chrono::duration", align 8
  %__d.addr = alloca %"struct.std::chrono::duration.0"*, align 8
  store %"struct.std::chrono::duration.0"* %__d, %"struct.std::chrono::duration.0"** %__d.addr, align 8
  %0 = load %"struct.std::chrono::duration.0"*, %"struct.std::chrono::duration.0"** %__d.addr, align 8
  %call = call double @_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE(%"struct.std::chrono::duration.0"* nonnull align 8 dereferenceable(8) %0)
  %coerce.dive = getelementptr inbounds %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %retval, i32 0, i32 0
  store double %call, double* %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %retval, i32 0, i32 0
  %1 = load double, double* %coerce.dive1, align 8
  ret double %1
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i64 @_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%"struct.std::chrono::time_point"* nonnull align 8 dereferenceable(8) %__lhs, %"struct.std::chrono::time_point"* nonnull align 8 dereferenceable(8) %__rhs) #6 comdat {
entry:
  %retval = alloca %"struct.std::chrono::duration.0", align 8
  %__lhs.addr = alloca %"struct.std::chrono::time_point"*, align 8
  %__rhs.addr = alloca %"struct.std::chrono::time_point"*, align 8
  %ref.tmp = alloca %"struct.std::chrono::duration.0", align 8
  %ref.tmp1 = alloca %"struct.std::chrono::duration.0", align 8
  store %"struct.std::chrono::time_point"* %__lhs, %"struct.std::chrono::time_point"** %__lhs.addr, align 8
  store %"struct.std::chrono::time_point"* %__rhs, %"struct.std::chrono::time_point"** %__rhs.addr, align 8
  %0 = load %"struct.std::chrono::time_point"*, %"struct.std::chrono::time_point"** %__lhs.addr, align 8
  %call = call i64 @_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv(%"struct.std::chrono::time_point"* %0)
  %coerce.dive = getelementptr inbounds %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %ref.tmp, i32 0, i32 0
  store i64 %call, i64* %coerce.dive, align 8
  %1 = load %"struct.std::chrono::time_point"*, %"struct.std::chrono::time_point"** %__rhs.addr, align 8
  %call2 = call i64 @_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv(%"struct.std::chrono::time_point"* %1)
  %coerce.dive3 = getelementptr inbounds %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %ref.tmp1, i32 0, i32 0
  store i64 %call2, i64* %coerce.dive3, align 8
  %call4 = call i64 @_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_(%"struct.std::chrono::duration.0"* nonnull align 8 dereferenceable(8) %ref.tmp, %"struct.std::chrono::duration.0"* nonnull align 8 dereferenceable(8) %ref.tmp1)
  %coerce.dive5 = getelementptr inbounds %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %retval, i32 0, i32 0
  store i64 %call4, i64* %coerce.dive5, align 8
  %coerce.dive6 = getelementptr inbounds %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %retval, i32 0, i32 0
  %2 = load i64, i64* %coerce.dive6, align 8
  ret i64 %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"struct.std::chrono::duration"* @_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEpLERKS3_(%"struct.std::chrono::duration"* %this, %"struct.std::chrono::duration"* nonnull align 8 dereferenceable(8) %__d) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::chrono::duration"*, align 8
  %__d.addr = alloca %"struct.std::chrono::duration"*, align 8
  store %"struct.std::chrono::duration"* %this, %"struct.std::chrono::duration"** %this.addr, align 8
  store %"struct.std::chrono::duration"* %__d, %"struct.std::chrono::duration"** %__d.addr, align 8
  %this1 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %this.addr, align 8
  %0 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %__d.addr, align 8
  %call = call double @_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv(%"struct.std::chrono::duration"* %0)
  %__r = getelementptr inbounds %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %this1, i32 0, i32 0
  %1 = load double, double* %__r, align 8
  %add = fadd double %1, %call
  store double %add, double* %__r, align 8
  ret %"struct.std::chrono::duration"* %this1
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8 signext) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEl(%"class.std::basic_ostream"*, i64) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"*, double) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local double @_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv(%"struct.std::chrono::duration"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::chrono::duration"*, align 8
  store %"struct.std::chrono::duration"* %this, %"struct.std::chrono::duration"** %this.addr, align 8
  %this1 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %this.addr, align 8
  %__r = getelementptr inbounds %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %this1, i32 0, i32 0
  %0 = load double, double* %__r, align 8
  ret double %0
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local double @_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE(%"struct.std::chrono::duration.0"* nonnull align 8 dereferenceable(8) %__d) #6 comdat align 2 {
entry:
  %retval = alloca %"struct.std::chrono::duration", align 8
  %__d.addr = alloca %"struct.std::chrono::duration.0"*, align 8
  %ref.tmp = alloca double, align 8
  store %"struct.std::chrono::duration.0"* %__d, %"struct.std::chrono::duration.0"** %__d.addr, align 8
  %0 = load %"struct.std::chrono::duration.0"*, %"struct.std::chrono::duration.0"** %__d.addr, align 8
  %call = call i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(%"struct.std::chrono::duration.0"* %0)
  %conv = sitofp i64 %call to double
  %div = fdiv double %conv, 1.000000e+09
  store double %div, double* %ref.tmp, align 8
  call void @_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_(%"struct.std::chrono::duration"* %retval, double* nonnull align 8 dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr inbounds %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %retval, i32 0, i32 0
  %1 = load double, double* %coerce.dive, align 8
  ret double %1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(%"struct.std::chrono::duration.0"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::chrono::duration.0"*, align 8
  store %"struct.std::chrono::duration.0"* %this, %"struct.std::chrono::duration.0"** %this.addr, align 8
  %this1 = load %"struct.std::chrono::duration.0"*, %"struct.std::chrono::duration.0"** %this.addr, align 8
  %__r = getelementptr inbounds %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %this1, i32 0, i32 0
  %0 = load i64, i64* %__r, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_(%"struct.std::chrono::duration"* %this, double* nonnull align 8 dereferenceable(8) %__rep) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::chrono::duration"*, align 8
  %__rep.addr = alloca double*, align 8
  store %"struct.std::chrono::duration"* %this, %"struct.std::chrono::duration"** %this.addr, align 8
  store double* %__rep, double** %__rep.addr, align 8
  %this1 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %this.addr, align 8
  %__r = getelementptr inbounds %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %this1, i32 0, i32 0
  %0 = load double*, double** %__rep.addr, align 8
  %1 = load double, double* %0, align 8
  store double %1, double* %__r, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i64 @_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_(%"struct.std::chrono::duration.0"* nonnull align 8 dereferenceable(8) %__lhs, %"struct.std::chrono::duration.0"* nonnull align 8 dereferenceable(8) %__rhs) #6 comdat {
entry:
  %retval = alloca %"struct.std::chrono::duration.0", align 8
  %__lhs.addr = alloca %"struct.std::chrono::duration.0"*, align 8
  %__rhs.addr = alloca %"struct.std::chrono::duration.0"*, align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp1 = alloca %"struct.std::chrono::duration.0", align 8
  %ref.tmp2 = alloca %"struct.std::chrono::duration.0", align 8
  store %"struct.std::chrono::duration.0"* %__lhs, %"struct.std::chrono::duration.0"** %__lhs.addr, align 8
  store %"struct.std::chrono::duration.0"* %__rhs, %"struct.std::chrono::duration.0"** %__rhs.addr, align 8
  %0 = load %"struct.std::chrono::duration.0"*, %"struct.std::chrono::duration.0"** %__lhs.addr, align 8
  %1 = bitcast %"struct.std::chrono::duration.0"* %ref.tmp1 to i8*
  %2 = bitcast %"struct.std::chrono::duration.0"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  %call = call i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(%"struct.std::chrono::duration.0"* %ref.tmp1)
  %3 = load %"struct.std::chrono::duration.0"*, %"struct.std::chrono::duration.0"** %__rhs.addr, align 8
  %4 = bitcast %"struct.std::chrono::duration.0"* %ref.tmp2 to i8*
  %5 = bitcast %"struct.std::chrono::duration.0"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 8, i1 false)
  %call3 = call i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(%"struct.std::chrono::duration.0"* %ref.tmp2)
  %sub = sub nsw i64 %call, %call3
  store i64 %sub, i64* %ref.tmp, align 8
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_(%"struct.std::chrono::duration.0"* %retval, i64* nonnull align 8 dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr inbounds %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %retval, i32 0, i32 0
  %6 = load i64, i64* %coerce.dive, align 8
  ret i64 %6
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv(%"struct.std::chrono::time_point"* %this) #7 comdat align 2 {
entry:
  %retval = alloca %"struct.std::chrono::duration.0", align 8
  %this.addr = alloca %"struct.std::chrono::time_point"*, align 8
  store %"struct.std::chrono::time_point"* %this, %"struct.std::chrono::time_point"** %this.addr, align 8
  %this1 = load %"struct.std::chrono::time_point"*, %"struct.std::chrono::time_point"** %this.addr, align 8
  %__d = getelementptr inbounds %"struct.std::chrono::time_point", %"struct.std::chrono::time_point"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::chrono::duration.0"* %retval to i8*
  %1 = bitcast %"struct.std::chrono::duration.0"* %__d to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %retval, i32 0, i32 0
  %2 = load i64, i64* %coerce.dive, align 8
  ret i64 %2
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_(%"struct.std::chrono::duration.0"* %this, i64* nonnull align 8 dereferenceable(8) %__rep) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::chrono::duration.0"*, align 8
  %__rep.addr = alloca i64*, align 8
  store %"struct.std::chrono::duration.0"* %this, %"struct.std::chrono::duration.0"** %this.addr, align 8
  store i64* %__rep, i64** %__rep.addr, align 8
  %this1 = load %"struct.std::chrono::duration.0"*, %"struct.std::chrono::duration.0"** %this.addr, align 8
  %__r = getelementptr inbounds %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %this1, i32 0, i32 0
  %0 = load i64*, i64** %__rep.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %__r, align 8
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_DivisionByOneSample.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn writeonly }
attributes #6 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 1fdec59bffc11ae37eb51a1b9869f0696bfd5312)"}
