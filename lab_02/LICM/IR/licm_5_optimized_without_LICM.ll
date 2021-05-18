; ModuleID = 'cpp/licm_5.cpp'
source_filename = "cpp/licm_5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b1 = dso_local local_unnamed_addr global [100000 x i32] zeroinitializer, align 16
@b2 = dso_local local_unnamed_addr global [100000 x i32] zeroinitializer, align 16
@b3 = dso_local local_unnamed_addr global [100000 x i32] zeroinitializer, align 16
@b4 = dso_local local_unnamed_addr global [100000 x i32] zeroinitializer, align 16
@b5 = dso_local local_unnamed_addr global [100000 x i32] zeroinitializer, align 16
@b6 = dso_local local_unnamed_addr global [100000 x i32] zeroinitializer, align 16
@b7 = dso_local local_unnamed_addr global [100000 x i32] zeroinitializer, align 16
@b8 = dso_local local_unnamed_addr global [100000 x i32] zeroinitializer, align 16
@b9 = dso_local local_unnamed_addr global [100000 x i32] zeroinitializer, align 16
@b10 = dso_local local_unnamed_addr global [100000 x i32] zeroinitializer, align 16
@b11 = dso_local local_unnamed_addr global [100000 x i32] zeroinitializer, align 16
@b12 = dso_local local_unnamed_addr global [100000 x i32] zeroinitializer, align 16
@b13 = dso_local local_unnamed_addr global [100000 x i32] zeroinitializer, align 16
@b14 = dso_local local_unnamed_addr global [100000 x i32] zeroinitializer, align 16
@b15 = dso_local local_unnamed_addr global [100000 x i32] zeroinitializer, align 16
@b16 = dso_local local_unnamed_addr global [100000 x i32] zeroinitializer, align 16
@b17 = dso_local local_unnamed_addr global [100000 x i32] zeroinitializer, align 16
@b18 = dso_local local_unnamed_addr global [100000 x i32] zeroinitializer, align 16
@b19 = dso_local local_unnamed_addr global [100000 x i32] zeroinitializer, align 16
@b20 = dso_local local_unnamed_addr global [100000 x i32] zeroinitializer, align 16

; Function Attrs: nofree norecurse nounwind uwtable writeonly
define dso_local void @_Z4funciiiiiiiiiiiiiiii(i32 %a1, i32 %a2, i32 %a3, i32 %a4, i32 %a5, i32 %a6, i32 %a7, i32 %a8, i32 %a9, i32 %a10, i32 %a11, i32 %a12, i32 %a13, i32 %a14, i32 %a15, i32 %a16) local_unnamed_addr #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %add = add nsw i32 %a2, %a1
  %arrayidx = getelementptr inbounds [100000 x i32], [100000 x i32]* @b1, i64 0, i64 %indvars.iv
  store i32 %add, i32* %arrayidx, align 4, !tbaa !2
  %add1 = add nsw i32 %a3, %a2
  %arrayidx3 = getelementptr inbounds [100000 x i32], [100000 x i32]* @b2, i64 0, i64 %indvars.iv
  store i32 %add1, i32* %arrayidx3, align 4, !tbaa !2
  %add4 = add nsw i32 %a4, %a3
  %arrayidx6 = getelementptr inbounds [100000 x i32], [100000 x i32]* @b3, i64 0, i64 %indvars.iv
  store i32 %add4, i32* %arrayidx6, align 4, !tbaa !2
  %add7 = add nsw i32 %a5, %a4
  %arrayidx9 = getelementptr inbounds [100000 x i32], [100000 x i32]* @b4, i64 0, i64 %indvars.iv
  store i32 %add7, i32* %arrayidx9, align 4, !tbaa !2
  %add10 = add nsw i32 %a6, %a5
  %arrayidx12 = getelementptr inbounds [100000 x i32], [100000 x i32]* @b5, i64 0, i64 %indvars.iv
  store i32 %add10, i32* %arrayidx12, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 400000
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !6

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
entry:
  store i32 42, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16, !tbaa !2
  store i32 43, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b2, i64 0, i64 0), align 16, !tbaa !2
  store i32 44, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b3, i64 0, i64 0), align 16, !tbaa !2
  store i32 45, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b4, i64 0, i64 0), align 16, !tbaa !2
  store i32 46, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b5, i64 0, i64 0), align 16, !tbaa !2
  store i32 47, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b6, i64 0, i64 0), align 16, !tbaa !2
  store i32 48, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b7, i64 0, i64 0), align 16, !tbaa !2
  store i32 49, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b8, i64 0, i64 0), align 16, !tbaa !2
  store i32 50, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b9, i64 0, i64 0), align 16, !tbaa !2
  store i32 51, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b10, i64 0, i64 0), align 16, !tbaa !2
  store i32 52, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b11, i64 0, i64 0), align 16, !tbaa !2
  store i32 53, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b12, i64 0, i64 0), align 16, !tbaa !2
  store i32 54, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b13, i64 0, i64 0), align 16, !tbaa !2
  store i32 55, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b14, i64 0, i64 0), align 16, !tbaa !2
  store i32 56, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b15, i64 0, i64 0), align 16, !tbaa !2
  store i32 57, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b16, i64 0, i64 0), align 16, !tbaa !2
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  ret i32 0

for.body:                                         ; preds = %for.body, %entry
  %i.017 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %0 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16, !tbaa !2
  call void @_Z4funciiiiiiiiiiiiiiii(i32 %0, i32 %0, i32 %0, i32 %0, i32 %0, i32 %0, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef)
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !8
}

attributes #0 = { nofree norecurse nounwind uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project 1fdec59bffc11ae37eb51a1b9869f0696bfd5312)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !7}
