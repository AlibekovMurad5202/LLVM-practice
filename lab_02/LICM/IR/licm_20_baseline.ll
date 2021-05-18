; ModuleID = 'cpp/licm_20.cpp'
source_filename = "cpp/licm_20.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b1 = dso_local global [100000 x i32] zeroinitializer, align 16
@b2 = dso_local global [100000 x i32] zeroinitializer, align 16
@b3 = dso_local global [100000 x i32] zeroinitializer, align 16
@b4 = dso_local global [100000 x i32] zeroinitializer, align 16
@b5 = dso_local global [100000 x i32] zeroinitializer, align 16
@b6 = dso_local global [100000 x i32] zeroinitializer, align 16
@b7 = dso_local global [100000 x i32] zeroinitializer, align 16
@b8 = dso_local global [100000 x i32] zeroinitializer, align 16
@b9 = dso_local global [100000 x i32] zeroinitializer, align 16
@b10 = dso_local global [100000 x i32] zeroinitializer, align 16
@b11 = dso_local global [100000 x i32] zeroinitializer, align 16
@b12 = dso_local global [100000 x i32] zeroinitializer, align 16
@b13 = dso_local global [100000 x i32] zeroinitializer, align 16
@b14 = dso_local global [100000 x i32] zeroinitializer, align 16
@b15 = dso_local global [100000 x i32] zeroinitializer, align 16
@b16 = dso_local global [100000 x i32] zeroinitializer, align 16
@b17 = dso_local global [100000 x i32] zeroinitializer, align 16
@b18 = dso_local global [100000 x i32] zeroinitializer, align 16
@b19 = dso_local global [100000 x i32] zeroinitializer, align 16
@b20 = dso_local global [100000 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_Z4funciiiiiiiiiiiiiiii(i32 %a1, i32 %a2, i32 %a3, i32 %a4, i32 %a5, i32 %a6, i32 %a7, i32 %a8, i32 %a9, i32 %a10, i32 %a11, i32 %a12, i32 %a13, i32 %a14, i32 %a15, i32 %a16) #0 {
entry:
  %a1.addr = alloca i32, align 4
  %a2.addr = alloca i32, align 4
  %a3.addr = alloca i32, align 4
  %a4.addr = alloca i32, align 4
  %a5.addr = alloca i32, align 4
  %a6.addr = alloca i32, align 4
  %a7.addr = alloca i32, align 4
  %a8.addr = alloca i32, align 4
  %a9.addr = alloca i32, align 4
  %a10.addr = alloca i32, align 4
  %a11.addr = alloca i32, align 4
  %a12.addr = alloca i32, align 4
  %a13.addr = alloca i32, align 4
  %a14.addr = alloca i32, align 4
  %a15.addr = alloca i32, align 4
  %a16.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %a1, i32* %a1.addr, align 4
  store i32 %a2, i32* %a2.addr, align 4
  store i32 %a3, i32* %a3.addr, align 4
  store i32 %a4, i32* %a4.addr, align 4
  store i32 %a5, i32* %a5.addr, align 4
  store i32 %a6, i32* %a6.addr, align 4
  store i32 %a7, i32* %a7.addr, align 4
  store i32 %a8, i32* %a8.addr, align 4
  store i32 %a9, i32* %a9.addr, align 4
  store i32 %a10, i32* %a10.addr, align 4
  store i32 %a11, i32* %a11.addr, align 4
  store i32 %a12, i32* %a12.addr, align 4
  store i32 %a13, i32* %a13.addr, align 4
  store i32 %a14, i32* %a14.addr, align 4
  store i32 %a15, i32* %a15.addr, align 4
  store i32 %a16, i32* %a16.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp slt i64 %conv, 100000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %a1.addr, align 4
  %2 = load i32, i32* %a2.addr, align 4
  %add = add nsw i32 %1, %2
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [100000 x i32], [100000 x i32]* @b1, i64 0, i64 %idxprom
  store i32 %add, i32* %arrayidx, align 4
  %4 = load i32, i32* %a2.addr, align 4
  %5 = load i32, i32* %a3.addr, align 4
  %add1 = add nsw i32 %4, %5
  %6 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [100000 x i32], [100000 x i32]* @b2, i64 0, i64 %idxprom2
  store i32 %add1, i32* %arrayidx3, align 4
  %7 = load i32, i32* %a3.addr, align 4
  %8 = load i32, i32* %a4.addr, align 4
  %add4 = add nsw i32 %7, %8
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds [100000 x i32], [100000 x i32]* @b3, i64 0, i64 %idxprom5
  store i32 %add4, i32* %arrayidx6, align 4
  %10 = load i32, i32* %a4.addr, align 4
  %11 = load i32, i32* %a5.addr, align 4
  %add7 = add nsw i32 %10, %11
  %12 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds [100000 x i32], [100000 x i32]* @b4, i64 0, i64 %idxprom8
  store i32 %add7, i32* %arrayidx9, align 4
  %13 = load i32, i32* %a5.addr, align 4
  %14 = load i32, i32* %a6.addr, align 4
  %add10 = add nsw i32 %13, %14
  %15 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds [100000 x i32], [100000 x i32]* @b5, i64 0, i64 %idxprom11
  store i32 %add10, i32* %arrayidx12, align 4
  %16 = load i32, i32* %a6.addr, align 4
  %17 = load i32, i32* %a7.addr, align 4
  %add13 = add nsw i32 %16, %17
  %18 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %18 to i64
  %arrayidx15 = getelementptr inbounds [100000 x i32], [100000 x i32]* @b6, i64 0, i64 %idxprom14
  store i32 %add13, i32* %arrayidx15, align 4
  %19 = load i32, i32* %a7.addr, align 4
  %20 = load i32, i32* %a8.addr, align 4
  %add16 = add nsw i32 %19, %20
  %21 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %21 to i64
  %arrayidx18 = getelementptr inbounds [100000 x i32], [100000 x i32]* @b7, i64 0, i64 %idxprom17
  store i32 %add16, i32* %arrayidx18, align 4
  %22 = load i32, i32* %a8.addr, align 4
  %23 = load i32, i32* %a9.addr, align 4
  %add19 = add nsw i32 %22, %23
  %24 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %24 to i64
  %arrayidx21 = getelementptr inbounds [100000 x i32], [100000 x i32]* @b8, i64 0, i64 %idxprom20
  store i32 %add19, i32* %arrayidx21, align 4
  %25 = load i32, i32* %a9.addr, align 4
  %26 = load i32, i32* %a10.addr, align 4
  %add22 = add nsw i32 %25, %26
  %27 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %27 to i64
  %arrayidx24 = getelementptr inbounds [100000 x i32], [100000 x i32]* @b9, i64 0, i64 %idxprom23
  store i32 %add22, i32* %arrayidx24, align 4
  %28 = load i32, i32* %a10.addr, align 4
  %29 = load i32, i32* %a11.addr, align 4
  %add25 = add nsw i32 %28, %29
  %30 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %30 to i64
  %arrayidx27 = getelementptr inbounds [100000 x i32], [100000 x i32]* @b10, i64 0, i64 %idxprom26
  store i32 %add25, i32* %arrayidx27, align 4
  %31 = load i32, i32* %a11.addr, align 4
  %32 = load i32, i32* %a12.addr, align 4
  %add28 = add nsw i32 %31, %32
  %33 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %33 to i64
  %arrayidx30 = getelementptr inbounds [100000 x i32], [100000 x i32]* @b11, i64 0, i64 %idxprom29
  store i32 %add28, i32* %arrayidx30, align 4
  %34 = load i32, i32* %a12.addr, align 4
  %35 = load i32, i32* %a13.addr, align 4
  %add31 = add nsw i32 %34, %35
  %36 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %36 to i64
  %arrayidx33 = getelementptr inbounds [100000 x i32], [100000 x i32]* @b12, i64 0, i64 %idxprom32
  store i32 %add31, i32* %arrayidx33, align 4
  %37 = load i32, i32* %a13.addr, align 4
  %38 = load i32, i32* %a14.addr, align 4
  %add34 = add nsw i32 %37, %38
  %39 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %39 to i64
  %arrayidx36 = getelementptr inbounds [100000 x i32], [100000 x i32]* @b13, i64 0, i64 %idxprom35
  store i32 %add34, i32* %arrayidx36, align 4
  %40 = load i32, i32* %a14.addr, align 4
  %41 = load i32, i32* %a15.addr, align 4
  %add37 = add nsw i32 %40, %41
  %42 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %42 to i64
  %arrayidx39 = getelementptr inbounds [100000 x i32], [100000 x i32]* @b14, i64 0, i64 %idxprom38
  store i32 %add37, i32* %arrayidx39, align 4
  %43 = load i32, i32* %a15.addr, align 4
  %44 = load i32, i32* %a16.addr, align 4
  %add40 = add nsw i32 %43, %44
  %45 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %45 to i64
  %arrayidx42 = getelementptr inbounds [100000 x i32], [100000 x i32]* @b15, i64 0, i64 %idxprom41
  store i32 %add40, i32* %arrayidx42, align 4
  %46 = load i32, i32* %a16.addr, align 4
  %47 = load i32, i32* %a1.addr, align 4
  %add43 = add nsw i32 %46, %47
  %48 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %48 to i64
  %arrayidx45 = getelementptr inbounds [100000 x i32], [100000 x i32]* @b16, i64 0, i64 %idxprom44
  store i32 %add43, i32* %arrayidx45, align 4
  %49 = load i32, i32* %a16.addr, align 4
  %50 = load i32, i32* %a2.addr, align 4
  %add46 = add nsw i32 %49, %50
  %51 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %51 to i64
  %arrayidx48 = getelementptr inbounds [100000 x i32], [100000 x i32]* @b17, i64 0, i64 %idxprom47
  store i32 %add46, i32* %arrayidx48, align 4
  %52 = load i32, i32* %a16.addr, align 4
  %53 = load i32, i32* %a3.addr, align 4
  %add49 = add nsw i32 %52, %53
  %54 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %54 to i64
  %arrayidx51 = getelementptr inbounds [100000 x i32], [100000 x i32]* @b18, i64 0, i64 %idxprom50
  store i32 %add49, i32* %arrayidx51, align 4
  %55 = load i32, i32* %a16.addr, align 4
  %56 = load i32, i32* %a4.addr, align 4
  %add52 = add nsw i32 %55, %56
  %57 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %57 to i64
  %arrayidx54 = getelementptr inbounds [100000 x i32], [100000 x i32]* @b19, i64 0, i64 %idxprom53
  store i32 %add52, i32* %arrayidx54, align 4
  %58 = load i32, i32* %a16.addr, align 4
  %59 = load i32, i32* %a5.addr, align 4
  %add55 = add nsw i32 %58, %59
  %60 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %60 to i64
  %arrayidx57 = getelementptr inbounds [100000 x i32], [100000 x i32]* @b20, i64 0, i64 %idxprom56
  store i32 %add55, i32* %arrayidx57, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %61 = load i32, i32* %i, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define dso_local i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 42, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %0 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %add = add nsw i32 %0, 1
  store i32 %add, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b2, i64 0, i64 0), align 16
  %1 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %add1 = add nsw i32 %1, 2
  store i32 %add1, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b3, i64 0, i64 0), align 16
  %2 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %add2 = add nsw i32 %2, 3
  store i32 %add2, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b4, i64 0, i64 0), align 16
  %3 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %add3 = add nsw i32 %3, 4
  store i32 %add3, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b5, i64 0, i64 0), align 16
  %4 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %add4 = add nsw i32 %4, 5
  store i32 %add4, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b6, i64 0, i64 0), align 16
  %5 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %add5 = add nsw i32 %5, 6
  store i32 %add5, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b7, i64 0, i64 0), align 16
  %6 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %add6 = add nsw i32 %6, 7
  store i32 %add6, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b8, i64 0, i64 0), align 16
  %7 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %add7 = add nsw i32 %7, 8
  store i32 %add7, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b9, i64 0, i64 0), align 16
  %8 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %add8 = add nsw i32 %8, 9
  store i32 %add8, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b10, i64 0, i64 0), align 16
  %9 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %add9 = add nsw i32 %9, 10
  store i32 %add9, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b11, i64 0, i64 0), align 16
  %10 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %add10 = add nsw i32 %10, 11
  store i32 %add10, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b12, i64 0, i64 0), align 16
  %11 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %add11 = add nsw i32 %11, 12
  store i32 %add11, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b13, i64 0, i64 0), align 16
  %12 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %add12 = add nsw i32 %12, 13
  store i32 %add12, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b14, i64 0, i64 0), align 16
  %13 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %add13 = add nsw i32 %13, 14
  store i32 %add13, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b15, i64 0, i64 0), align 16
  %14 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %add14 = add nsw i32 %14, 15
  store i32 %add14, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b16, i64 0, i64 0), align 16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %15, 1000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %17 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %18 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %19 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %20 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %21 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %22 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %23 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %24 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %25 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %26 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %27 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %28 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %29 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %30 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  %31 = load i32, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @b1, i64 0, i64 0), align 16
  call void @_Z4funciiiiiiiiiiiiiiii(i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project 1fdec59bffc11ae37eb51a1b9869f0696bfd5312)"}
