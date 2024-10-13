(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var672 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var1445 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1445 null-String)))
(define-const var186 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
(define-const var3881 Int (length/-134980193 var1445)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var957 Int (+ var3881 16)) ; Statement: $i1 = $i0 + 16 
(assert true)
;(assert (<init>/543593434 var186 var957)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var186!1 String)
(declare-const var957!1 Int)
(assert true)
(define-const var2713 String (append/-1166366385 var186!1 34)) ; Statement: r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var186!2 String)
(assert (str.prefixof var186!1 var186!2))
(define-const var2657 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var364 Int (length/-134980193 var1445)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i4 >= $i2 goto $r3 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(assert (>= var2657 var364)) ; Cond: i4 >= $i2 
(assert true)
(define-const var868 String (append/-1166366385 var2713 34)) ; Statement: $r3 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var2713!1 String)
(assert (str.prefixof var2713 var2713!1))
(assert true)
(define-const var3562 String (toString/-2075883882 var868)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1445=r1, var672=null_type, var186=$r5, var3881=$i0, var957=$i1, var2713=r2, var2657=i4, var364=$i2, var868=$r3, var3562=$r4}
; {r1=var1445, null_type=var672, $r5=var186, $i0=var3881, $i1=var957, r2=var2713, i4=var2657, $i2=var364, $r3=var868, $r4=var3562}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r5 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = $i0 + 16;	specialinvoke $r5.<java.lang.StringBuilder: void <init>(int)>($i1);	r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	i4 = 0;	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	if i4 >= $i2 goto $r3 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r3 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3