(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3535 0)
(declare-sort var3951 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun iterator/529268990 (var3951) Iterator)
(declare-fun cast-from-var3535-to-var3951 (var3535) var3951)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3535 var3535)
(declare-const var3999 var3535) ; Statement: r1 := @this: com.mysql.cj.xdevapi.JsonArray 
(assert (not (= var3999 null-var3535)))
(define-const var3990 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3990 "[")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("[") 
(declare-const var3990!1 String)
(assert (= var3990!1 "["))
(assert true)
(define-const var3826 Iterator (iterator/529268990 (cast-from-var3535-to-var3951 var3999))) ; Statement: r2 = virtualinvoke r1.<com.mysql.cj.xdevapi.JsonArray: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3043 Bool (Iterator_hasNext/-1669924200 var3826)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(assert (= (ite var3043 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var3990!1 "]")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3990!2 String)
(assert (= var3990!2 (str.++ var3990!1 "]")))
(assert true)
(define-const var1912 String (toString/-2075883882 var3990!2)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), iterator/529268990=([java.util.ArrayList], java.util.Iterator), cast-from-var3535-to-var3951=([com.mysql.cj.xdevapi.JsonArray], java.util.ArrayList), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3535=com.mysql.cj.xdevapi.JsonArray, var3999=r1, var3990=$r0, var3951=java.util.ArrayList, var3826=r2, var3043=$z0, var1912=$r3}
; {com.mysql.cj.xdevapi.JsonArray=var3535, r1=var3999, $r0=var3990, java.util.ArrayList=var3951, r2=var3826, $z0=var3043, $r3=var1912}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.xdevapi.JsonArray;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("[");	r2 = virtualinvoke r1.<com.mysql.cj.xdevapi.JsonArray: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3