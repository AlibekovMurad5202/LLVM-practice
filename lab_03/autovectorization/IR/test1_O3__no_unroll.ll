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
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %entry ]
  %3 = getelementptr inbounds float, float* %0, i64 %index
  %4 = bitcast float* %3 to <4 x float>*
  %wide.load = load <4 x float>, <4 x float>* %4, align 4, !tbaa !8, !alias.scope !10
  %5 = getelementptr inbounds float, float* %1, i64 %index
  %6 = bitcast float* %5 to <4 x float>*
  %wide.load24 = load <4 x float>, <4 x float>* %6, align 4, !tbaa !8, !alias.scope !13
  %7 = fmul <4 x float> %wide.load, %wide.load24
  %8 = getelementptr inbounds float, float* %2, i64 %index
  %9 = bitcast float* %8 to <4 x float>*
  store <4 x float> %7, <4 x float>* %9, align 4, !tbaa !8, !alias.scope !15, !noalias !17
  %index.next = add i64 %index, 4
  %10 = icmp eq i64 %index.next, 1048576
  br i1 %10, label %for.cond.cleanup, label %vector.body, !llvm.loop !18

for.cond.cleanup:                                 ; preds = %vector.body, %for.body
  ret void

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %add.ptr.i = getelementptr inbounds float, float* %0, i64 %indvars.iv
  %11 = load float, float* %add.ptr.i, align 4, !tbaa !8
  %add.ptr.i14 = getelementptr inbounds float, float* %1, i64 %indvars.iv
  %12 = load float, float* %add.ptr.i14, align 4, !tbaa !8
  %mul = fmul float %11, %12
  %add.ptr.i12 = getelementptr inbounds float, float* %2, i64 %indvars.iv
  store float %mul, float* %add.ptr.i12, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1048576
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !21
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
!18 = distinct !{!18, !19, !20}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = distinct !{!21, !19, !20}
