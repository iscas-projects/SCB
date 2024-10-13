(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2105 0)
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
(declare-const var329 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var329 null-String)))
(declare-const var142 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var142 null-Int)))
(declare-const var283 Int) ; Statement: c3 := @parameter2: char 
(assert (not (= var283 null-Int)))
(assert true)
(define-const var1068 Int (length/-134980193 var329)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i1 > i0 goto $r1 = new java.lang.StringBuilder 
(assert (> var142 var1068)) ; Cond: i1 > i0 
(define-const var1113 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1113 var142)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i1) 

(declare-const var1113!1 String)
(declare-const var142!1 Int)
(assert true)
;(assert (append/672562846 var1113!1 var329)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1113!2 String)
(assert (= var1113!2 (str.++ var1113!1 var329)))
(define-const var941 Int (- var142!1 var1068)) ; Statement: i2 = i1 - i0 
(define-const var3134 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i2 goto $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (>= var3134 var941))) ; Negate: Cond: i4 >= i2  
(assert true)
;(assert (append/-1166366385 var1113!2 var283)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c3) 
(declare-const var1113!3 String)
(assert (str.prefixof var1113!2 var1113!3))
(define-const var3134!1 Int (+ var3134 1)) ; Statement: i4 = i4 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i2 goto $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3134!1 var941)) ; Cond: i4 >= i2 
(assert true)
(define-const var2947 String (toString/-2075883882 var1113!3)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var329=r0, var2105=null_type, var142=i1, var283=c3, var1068=i0, var1113=$r1, var941=i2, var3134=i4, var2947=$r2}
; {r0=var329, null_type=var2105, i1=var142, c3=var283, i0=var1068, $r1=var1113, i2=var941, i4=var3134, $r2=var2947}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	c3 := @parameter2: char;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i1 > i0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i1);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	i2 = i1 - i0;	i4 = 0;	if i4 >= i2 goto $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c3);	i4 = i4 + 1;	goto [?= (branch)];	if i4 >= i2 goto $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 6