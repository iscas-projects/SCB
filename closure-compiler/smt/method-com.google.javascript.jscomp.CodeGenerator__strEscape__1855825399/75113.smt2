(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3275 0)
(declare-sort var1741 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3275 var3275)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2257 var3275) ; Statement: r5 := @this: com.google.javascript.jscomp.CodeGenerator 
(assert (not (= var2257 null-var3275)))
(declare-const var690 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var690 null-String)))
(declare-const var3790 String) ; Statement: r10 := @parameter1: java.lang.String 
(assert (not (= var3790 null-String)))
(declare-const var1358 String) ; Statement: r8 := @parameter2: java.lang.String 
(assert (not (= var1358 null-String)))
(declare-const var1645 String) ; Statement: r3 := @parameter3: java.lang.String 
(assert (not (= var1645 null-String)))
(declare-const var3501 String) ; Statement: r4 := @parameter4: java.lang.String 
(assert (not (= var3501 null-String)))
(declare-const var2608 String) ; Statement: r9 := @parameter5: java.lang.String 
(assert (not (= var2608 null-String)))
(declare-const var1210 Bool) ; Statement: z1 := @parameter6: boolean 
(assert (not (= var1210 null-Bool)))
(define-const var2955 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
(define-const var1330 Int (length/-134980193 var690)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3322 Int (+ var1330 2)) ; Statement: $i1 = $i0 + 2 
(assert true)
;(assert (<init>/543593434 var2955 var3322)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var2955!1 String)
(declare-const var3322!1 Int)
(define-const var179 Int 0) ; Statement: i16 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3417 Int (length/-134980193 var690)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i16 >= $i2 goto $r2 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var179 var3417)) ; Cond: i16 >= $i2 
(assert true)
(define-const var1105 String (toString/-2075883882 var2955!1)) ; Statement: $r2 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3275=com.google.javascript.jscomp.CodeGenerator, var2257=r5, var690=r1, var1741=null_type, var3790=r10, var1358=r8, var1645=r3, var3501=r4, var2608=r9, var1210=z1, var2955=$r15, var1330=$i0, var3322=$i1, var179=i16, var3417=$i2, var1105=$r2}
; {com.google.javascript.jscomp.CodeGenerator=var3275, r5=var2257, r1=var690, null_type=var1741, r10=var3790, r8=var1358, r3=var1645, r4=var3501, r9=var2608, z1=var1210, $r15=var2955, $i0=var1330, $i1=var3322, i16=var179, $i2=var3417, $r2=var1105}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.CodeGenerator;	r1 := @parameter0: java.lang.String;	r10 := @parameter1: java.lang.String;	r8 := @parameter2: java.lang.String;	r3 := @parameter3: java.lang.String;	r4 := @parameter4: java.lang.String;	r9 := @parameter5: java.lang.String;	z1 := @parameter6: boolean;	$r15 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = $i0 + 2;	specialinvoke $r15.<java.lang.StringBuilder: void <init>(int)>($i1);	i16 = 0;	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	if i16 >= $i2 goto $r2 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3