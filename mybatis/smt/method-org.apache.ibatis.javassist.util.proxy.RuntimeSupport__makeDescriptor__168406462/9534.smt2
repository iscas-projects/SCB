(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-ClassObject ClassObject)
(declare-const var2922 (Array Int ClassObject)) ; Statement: r1 := @parameter0: java.lang.Class[] 
(assert (not (= var2922 null-__Array__Int__ClassObject__)))
(declare-const var2664 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var2664 null-ClassObject)))
(define-const var281 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var281)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var281!1 String)
(assert (= var281!1 ""))
(assert true)
;(assert (append/-1166366385 var281!1 40)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var281!2 String)
(assert (str.prefixof var281!1 var281!2))
(define-const var3145 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var538 Int (getLength-Arr-ClassObject-1 var2922)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i1 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (>= var3145 var538)) ; Cond: i1 >= $i0 
(assert true)
;(assert (append/-1166366385 var281!2 41)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var281!3 String)
(assert (str.prefixof var281!2 var281!3))
 ; Statement: if r2 == null goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var2664 null-ClassObject)) ; Cond: r2 == null 
(assert true)
(define-const var2296 String (toString/-2075883882 var281!3)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2922=r1, var2664=r2, var281=$r0, var3145=i1, var538=$i0, var2296=$r3}
; {r1=var2922, r2=var2664, $r0=var281, i1=var3145, $i0=var538, $r3=var2296}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.Class[];	r2 := @parameter1: java.lang.Class;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	i1 = 0;	$i0 = lengthof r1;	if i1 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	if r2 == null goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 4