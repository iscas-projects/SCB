(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var583 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun sp/-379439865 (var583) Int)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var583 var583)
(declare-const var172 var583) ; Statement: r1 := @this: jdk.nashorn.internal.ir.LexicalContext 
(assert (not (= var172 null-var583)))
(define-const var3189 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3189)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3189!1 String)
(assert true)
;(assert (append/1560614132 var3189!1 "[ ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("[ ") 
(declare-const var3189!2 String)
(assert (str.prefixof var3189!1 var3189!2))
(define-const var188 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var408 Int (sp/-379439865 var172)) ; Statement: $i0 = r1.<jdk.nashorn.internal.ir.LexicalContext: int sp> 
 ; Statement: if i3 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ==> ]") 
(assert (>= var188 var408)) ; Cond: i3 >= $i0 
(assert true)
;(assert (append/1560614132 var3189!2 " ==> ]")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ==> ]") 
(declare-const var3189!3 String)
(assert (str.prefixof var3189!2 var3189!3))
(assert true)
(define-const var1517 String (toString/-222306083 var3189!3)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), sp/-379439865=([jdk.nashorn.internal.ir.LexicalContext], int), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var583=jdk.nashorn.internal.ir.LexicalContext, var172=r1, var3189=$r0, var188=i3, var408=$i0, var1517=$r2}
; {jdk.nashorn.internal.ir.LexicalContext=var583, r1=var172, $r0=var3189, i3=var188, $i0=var408, $r2=var1517}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.LexicalContext;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("[ ");	i3 = 0;	$i0 = r1.<jdk.nashorn.internal.ir.LexicalContext: int sp>;	if i3 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ==> ]");	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ==> ]");	$r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	return $r2
;block_num 3