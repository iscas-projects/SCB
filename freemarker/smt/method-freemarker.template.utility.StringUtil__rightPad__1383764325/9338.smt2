(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var597 0)
(declare-sort var770 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var770-init () var770)
(declare-fun <init>/875830710 (var770 String) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var647 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var647 null-String)))
(declare-const var3726 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3726 null-Int)))
(declare-const var1860 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var1860 null-String)))
(assert true)
(define-const var229 Int (length/-134980193 var647)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i1 > i0 goto $r1 = new java.lang.StringBuilder 
(assert (> var3726 var229)) ; Cond: i1 > i0 
(define-const var2923 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var2923 var3726)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i1) 

(declare-const var2923!1 String)
(declare-const var3726!1 Int)
(assert true)
;(assert (append/672562846 var2923!1 var647)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2923!2 String)
(assert (= var2923!2 (str.++ var2923!1 var647)))
(define-const var1264 Int (- var3726!1 var229)) ; Statement: i9 = i1 - i0 
(assert true)
(define-const var3389 Int (length/-134980193 var1860)) ; Statement: i2 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if i2 != 0 goto i3 = i0 % i2 
(assert (not (not (= var3389 0)))) ; Negate: Cond: i2 != 0  
(define-const var406 var770 var770-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var406 "The \u0022filling\u0022 argument can\u0027t be 0 length string.")) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("The \"filling\" argument can\'t be 0 length string.") 

(declare-const var406!1 var770)
(declare-const var3334 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var770-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var647=r0, var597=null_type, var3726=i1, var1860=r2, var229=i0, var2923=$r1, var1264=i9, var3389=i2, var770=java.lang.IllegalArgumentException, var406=$r4, var3334="The \"filling\" argument can\'t be 0 length string."}
; {r0=var647, null_type=var597, i1=var3726, r2=var1860, i0=var229, $r1=var2923, i9=var1264, i2=var3389, java.lang.IllegalArgumentException=var770, $r4=var406, "The \"filling\" argument can\'t be 0 length string."=var3334}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	r2 := @parameter2: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i1 > i0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i1);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	i9 = i1 - i0;	i2 = virtualinvoke r2.<java.lang.String: int length()>();	if i2 != 0 goto i3 = i0 % i2;	$r4 = new java.lang.IllegalArgumentException;	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("The \"filling\" argument can\'t be 0 length string.");	throw $r4
;block_num 3