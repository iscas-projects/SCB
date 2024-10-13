(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3945 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1439 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1439 null-String)))
(declare-const var2244 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2244 null-Int)))
(declare-const var3434 Int) ; Statement: c3 := @parameter2: char 
(assert (not (= var3434 null-Int)))
(assert true)
(define-const var2684 Int (length/-134980193 var1439)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i1 > i0 goto $r1 = new java.lang.StringBuilder 
(assert (> var2244 var2684)) ; Cond: i1 > i0 
(define-const var3383 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3383 var2244)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i1) 

(declare-const var3383!1 String)
(declare-const var2244!1 Int)
(assert true)
;(assert (append/672562846 var3383!1 var1439)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3383!2 String)
(assert (= var3383!2 (str.++ var3383!1 var1439)))
(define-const var1100 Int (- var2244!1 var2684)) ; Statement: i2 = i1 - i0 
(define-const var2794 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i2 goto $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (>= var2794 var1100))) ; Negate: Cond: i4 >= i2  
(assert true)
;(assert (append/-1166366385 var3383!2 var3434)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c3) 
(declare-const var3383!3 String)
(assert (str.prefixof var3383!2 var3383!3))
(define-const var2794!1 Int (+ var2794 1)) ; Statement: i4 = i4 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i2 goto $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (>= var2794!1 var1100))) ; Negate: Cond: i4 >= i2  
(assert true)
;(assert (append/-1166366385 var3383!3 var3434)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c3) 
(declare-const var3383!4 String)
(assert (str.prefixof var3383!3 var3383!4))
(define-const var2794!2 Int (+ var2794!1 1)) ; Statement: i4 = i4 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i2 goto $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2794!2 var1100)) ; Cond: i4 >= i2 
(assert true)
(define-const var3538 String (toString/-2075883882 var3383!4)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1439=r0, var3945=null_type, var2244=i1, var3434=c3, var2684=i0, var3383=$r1, var1100=i2, var2794=i4, var3538=$r2}
; {r0=var1439, null_type=var3945, i1=var2244, c3=var3434, i0=var2684, $r1=var3383, i2=var1100, i4=var2794, $r2=var3538}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	c3 := @parameter2: char;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i1 > i0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i1);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	i2 = i1 - i0;	i4 = 0;	if i4 >= i2 goto $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c3);	i4 = i4 + 1;	goto [?= (branch)];	if i4 >= i2 goto $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c3);	i4 = i4 + 1;	goto [?= (branch)];	if i4 >= i2 goto $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 8