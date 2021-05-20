; ModuleID = 'run-fn.bc'
source_filename = "test.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testFunc = type { %"class.std::vector", %"class.std::vector", %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" = type { float*, float*, float* }

$_ZN8testFunc3runEv = comdat any

; Function Attrs: noinline nounwind uwtable
define weak_odr dso_local void @_ZN8testFunc3runEv(%struct.testFunc* %this) local_unnamed_addr #0 comdat align 2 {
entry:
  %_M_start.i = getelementptr inbounds %struct.testFunc, %struct.testFunc* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  %0 = load float*, float** %_M_start.i, align 8, !tbaa !2
  %_M_start.i13 = getelementptr inbounds %struct.testFunc, %struct.testFunc* %this, i64 0, i32 1, i32 0, i32 0, i32 0
  %1 = load float*, float** %_M_start.i13, align 8, !tbaa !2
  %_M_start.i11 = getelementptr inbounds %struct.testFunc, %struct.testFunc* %this, i64 0, i32 2, i32 0, i32 0, i32 0
  %2 = load float*, float** %_M_start.i11, align 8, !tbaa !2
  %scevgep = getelementptr float, float* %2, i64 1048576
  %scevgep17 = getelementptr float, float* %0, i64 1048576
  %scevgep19 = getelementptr float, float* %1, i64 1048576
  %bound0 = icmp ult float* %2, %scevgep17
  %bound1 = icmp ult float* %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound021 = icmp ult float* %2, %scevgep19
  %bound122 = icmp ult float* %1, %scevgep
  %found.conflict23 = and i1 %bound021, %bound122
  %conflict.rdx = or i1 %found.conflict, %found.conflict23
  br i1 %conflict.rdx, label %for.body, label %vector.body

vector.body:                                      ; preds = %entry, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %entry ]
  %3 = getelementptr inbounds float, float* %0, i64 %index
  %4 = bitcast float* %3 to <4 x float>*
  %wide.load = load <4 x float>, <4 x float>* %4, align 4, !tbaa !8, !alias.scope !10
  %5 = getelementptr inbounds float, float* %3, i64 4
  %6 = bitcast float* %5 to <4 x float>*
  %wide.load24 = load <4 x float>, <4 x float>* %6, align 4, !tbaa !8, !alias.scope !10
  %7 = getelementptr inbounds float, float* %1, i64 %index
  %8 = bitcast float* %7 to <4 x float>*
  %wide.load25 = load <4 x float>, <4 x float>* %8, align 4, !tbaa !8, !alias.scope !13
  %9 = getelementptr inbounds float, float* %7, i64 4
  %10 = bitcast float* %9 to <4 x float>*
  %wide.load26 = load <4 x float>, <4 x float>* %10, align 4, !tbaa !8, !alias.scope !13
  %11 = fmul <4 x float> %wide.load, %wide.load25
  %12 = fmul <4 x float> %wide.load24, %wide.load26
  %13 = getelementptr inbounds float, float* %2, i64 %index
  %14 = bitcast float* %13 to <4 x float>*
  store <4 x float> %11, <4 x float>* %14, align 4, !tbaa !8, !alias.scope !15, !noalias !17
  %15 = getelementptr inbounds float, float* %13, i64 4
  %16 = bitcast float* %15 to <4 x float>*
  store <4 x float> %12, <4 x float>* %16, align 4, !tbaa !8, !alias.scope !15, !noalias !17
  %index.next = or i64 %index, 8
  %17 = getelementptr inbounds float, float* %0, i64 %index.next
  %18 = bitcast float* %17 to <4 x float>*
  %wide.load.1 = load <4 x float>, <4 x float>* %18, align 4, !tbaa !8, !alias.scope !10
  %19 = getelementptr inbounds float, float* %17, i64 4
  %20 = bitcast float* %19 to <4 x float>*
  %wide.load24.1 = load <4 x float>, <4 x float>* %20, align 4, !tbaa !8, !alias.scope !10
  %21 = getelementptr inbounds float, float* %1, i64 %index.next
  %22 = bitcast float* %21 to <4 x float>*
  %wide.load25.1 = load <4 x float>, <4 x float>* %22, align 4, !tbaa !8, !alias.scope !13
  %23 = getelementptr inbounds float, float* %21, i64 4
  %24 = bitcast float* %23 to <4 x float>*
  %wide.load26.1 = load <4 x float>, <4 x float>* %24, align 4, !tbaa !8, !alias.scope !13
  %25 = fmul <4 x float> %wide.load.1, %wide.load25.1
  %26 = fmul <4 x float> %wide.load24.1, %wide.load26.1
  %27 = getelementptr inbounds float, float* %2, i64 %index.next
  %28 = bitcast float* %27 to <4 x float>*
  store <4 x float> %25, <4 x float>* %28, align 4, !tbaa !8, !alias.scope !15, !noalias !17
  %29 = getelementptr inbounds float, float* %27, i64 4
  %30 = bitcast float* %29 to <4 x float>*
  store <4 x float> %26, <4 x float>* %30, align 4, !tbaa !8, !alias.scope !15, !noalias !17
  %index.next.1 = add nuw nsw i64 %index, 16
  %31 = icmp eq i64 %index.next.1, 1048576
  br i1 %31, label %for.cond.cleanup, label %vector.body, !llvm.loop !18

for.cond.cleanup:                                 ; preds = %vector.body, %for.body
  ret void

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body ], [ 0, %entry ]
  %add.ptr.i = getelementptr inbounds float, float* %0, i64 %indvars.iv
  %32 = load float, float* %add.ptr.i, align 4, !tbaa !8
  %add.ptr.i14 = getelementptr inbounds float, float* %1, i64 %indvars.iv
  %33 = load float, float* %add.ptr.i14, align 4, !tbaa !8
  %mul = fmul float %32, %33
  %add.ptr.i12 = getelementptr inbounds float, float* %2, i64 %indvars.iv
  store float %mul, float* %add.ptr.i12, align 4, !tbaa !8
  %indvars.iv.next = or i64 %indvars.iv, 1
  %add.ptr.i.1 = getelementptr inbounds float, float* %0, i64 %indvars.iv.next
  %34 = load float, float* %add.ptr.i.1, align 4, !tbaa !8
  %add.ptr.i14.1 = getelementptr inbounds float, float* %1, i64 %indvars.iv.next
  %35 = load float, float* %add.ptr.i14.1, align 4, !tbaa !8
  %mul.1 = fmul float %34, %35
  %add.ptr.i12.1 = getelementptr inbounds float, float* %2, i64 %indvars.iv.next
  store float %mul.1, float* %add.ptr.i12.1, align 4, !tbaa !8
  %indvars.iv.next.1 = or i64 %indvars.iv, 2
  %add.ptr.i.2 = getelementptr inbounds float, float* %0, i64 %indvars.iv.next.1
  %36 = load float, float* %add.ptr.i.2, align 4, !tbaa !8
  %add.ptr.i14.2 = getelementptr inbounds float, float* %1, i64 %indvars.iv.next.1
  %37 = load float, float* %add.ptr.i14.2, align 4, !tbaa !8
  %mul.2 = fmul float %36, %37
  %add.ptr.i12.2 = getelementptr inbounds float, float* %2, i64 %indvars.iv.next.1
  store float %mul.2, float* %add.ptr.i12.2, align 4, !tbaa !8
  %indvars.iv.next.2 = or i64 %indvars.iv, 3
  %add.ptr.i.3 = getelementptr inbounds float, float* %0, i64 %indvars.iv.next.2
  %38 = load float, float* %add.ptr.i.3, align 4, !tbaa !8
  %add.ptr.i14.3 = getelementptr inbounds float, float* %1, i64 %indvars.iv.next.2
  %39 = load float, float* %add.ptr.i14.3, align 4, !tbaa !8
  %mul.3 = fmul float %38, %39
  %add.ptr.i12.3 = getelementptr inbounds float, float* %2, i64 %indvars.iv.next.2
  store float %mul.3, float* %add.ptr.i12.3, align 4, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 1048576
  br i1 %exitcond.not.3, label %for.cond.cleanup, label %for.body, !llvm.loop !20
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 1fdec59bffc11ae37eb51a1b9869f0696bfd5312)"}
!2 = !{!3, !5, i64 0}
!3 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !4, i64 0}
!4 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !5, i64 0, !5, i64 8, !5, i64 16}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !6, i64 0}
!10 = !{!11}
!11 = distinct !{!11, !12}
!12 = distinct !{!12, !"LVerDomain"}
!13 = !{!14}
!14 = distinct !{!14, !12}
!15 = !{!16}
!16 = distinct !{!16, !12}
!17 = !{!11, !14}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = distinct !{!20, !19}
