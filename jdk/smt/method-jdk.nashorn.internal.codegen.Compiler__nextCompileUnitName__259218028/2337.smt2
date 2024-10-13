(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3775 0)
(declare-sort var3864 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun firstCompileUnitName/-2141777069 (var3775) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun nextCompileUnitId/-2141777069 (var3775) var3864)
(declare-fun getAndIncrement/-721914959 (var3864) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3775 var3775)
(declare-const var3678 var3775) ; Statement: r1 := @this: jdk.nashorn.internal.codegen.Compiler 
(assert (not (= var3678 null-var3775)))
(define-const var2126 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var2126 32)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(32) 

(declare-const var2126!1 String)
(declare-const var2761 Int)
(define-const var1348 String (firstCompileUnitName/-2141777069 var3678)) ; Statement: $r2 = r1.<jdk.nashorn.internal.codegen.Compiler: java.lang.String firstCompileUnitName> 
(assert true)
;(assert (append/672562846 var2126!1 var1348)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2126!2 String)
(assert (= var2126!2 (str.++ var2126!1 var1348)))
(define-const var396 var3864 (nextCompileUnitId/-2141777069 var3678)) ; Statement: $r3 = r1.<jdk.nashorn.internal.codegen.Compiler: java.util.concurrent.atomic.AtomicInteger nextCompileUnitId> 
(assert true)
(define-const var3829 Int (getAndIncrement/-721914959 var396)) ; Statement: i0 = virtualinvoke $r3.<java.util.concurrent.atomic.AtomicInteger: int getAndIncrement()>() 
 ; Statement: if i0 <= 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (<= var3829 0)) ; Cond: i0 <= 0 
(assert true)
(define-const var98 String (toString/-2075883882 var2126!2)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), firstCompileUnitName/-2141777069=([jdk.nashorn.internal.codegen.Compiler], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), nextCompileUnitId/-2141777069=([jdk.nashorn.internal.codegen.Compiler], java.util.concurrent.atomic.AtomicInteger), getAndIncrement/-721914959=([java.util.concurrent.atomic.AtomicInteger], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3775=jdk.nashorn.internal.codegen.Compiler, var3678=r1, var2126=$r0, var2761=32, var1348=$r2, var3864=java.util.concurrent.atomic.AtomicInteger, var396=$r3, var3829=i0, var98=$r4}
; {jdk.nashorn.internal.codegen.Compiler=var3775, r1=var3678, $r0=var2126, 32=var2761, $r2=var1348, java.util.concurrent.atomic.AtomicInteger=var3864, $r3=var396, i0=var3829, $r4=var98}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.codegen.Compiler;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(32);	$r2 = r1.<jdk.nashorn.internal.codegen.Compiler: java.lang.String firstCompileUnitName>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = r1.<jdk.nashorn.internal.codegen.Compiler: java.util.concurrent.atomic.AtomicInteger nextCompileUnitId>;	i0 = virtualinvoke $r3.<java.util.concurrent.atomic.AtomicInteger: int getAndIncrement()>();	if i0 <= 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 2