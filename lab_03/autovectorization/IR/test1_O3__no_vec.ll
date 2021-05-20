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
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  ret void

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next.3, %for.body ]
  %add.ptr.i = getelementptr inbounds float, float* %0, i64 %indvars.iv
  %3 = load float, float* %add.ptr.i, align 4, !tbaa !8
  %add.ptr.i14 = getelementptr inbounds float, float* %1, i64 %indvars.iv
  %4 = load float, float* %add.ptr.i14, align 4, !tbaa !8
  %mul = fmul float %3, %4
  %add.ptr.i12 = getelementptr inbounds float, float* %2, i64 %indvars.iv
  store float %mul, float* %add.ptr.i12, align 4, !tbaa !8
  %indvars.iv.next = or i64 %indvars.iv, 1
  %add.ptr.i.1 = getelementptr inbounds float, float* %0, i64 %indvars.iv.next
  %5 = load float, float* %add.ptr.i.1, align 4, !tbaa !8
  %add.ptr.i14.1 = getelementptr inbounds float, float* %1, i64 %indvars.iv.next
  %6 = load float, float* %add.ptr.i14.1, align 4, !tbaa !8
  %mul.1 = fmul float %5, %6
  %add.ptr.i12.1 = getelementptr inbounds float, float* %2, i64 %indvars.iv.next
  store float %mul.1, float* %add.ptr.i12.1, align 4, !tbaa !8
  %indvars.iv.next.1 = or i64 %indvars.iv, 2
  %add.ptr.i.2 = getelementptr inbounds float, float* %0, i64 %indvars.iv.next.1
  %7 = load float, float* %add.ptr.i.2, align 4, !tbaa !8
  %add.ptr.i14.2 = getelementptr inbounds float, float* %1, i64 %indvars.iv.next.1
  %8 = load float, float* %add.ptr.i14.2, align 4, !tbaa !8
  %mul.2 = fmul float %7, %8
  %add.ptr.i12.2 = getelementptr inbounds float, float* %2, i64 %indvars.iv.next.1
  store float %mul.2, float* %add.ptr.i12.2, align 4, !tbaa !8
  %indvars.iv.next.2 = or i64 %indvars.iv, 3
  %add.ptr.i.3 = getelementptr inbounds float, float* %0, i64 %indvars.iv.next.2
  %9 = load float, float* %add.ptr.i.3, align 4, !tbaa !8
  %add.ptr.i14.3 = getelementptr inbounds float, float* %1, i64 %indvars.iv.next.2
  %10 = load float, float* %add.ptr.i14.3, align 4, !tbaa !8
  %mul.3 = fmul float %9, %10
  %add.ptr.i12.3 = getelementptr inbounds float, float* %2, i64 %indvars.iv.next.2
  store float %mul.3, float* %add.ptr.i12.3, align 4, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 1048576
  br i1 %exitcond.not.3, label %for.cond.cleanup, label %for.body
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
