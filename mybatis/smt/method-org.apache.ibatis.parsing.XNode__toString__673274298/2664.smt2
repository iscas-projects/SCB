(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2451 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun buildToString/-522395054 (var2451 String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2451 var2451)
(declare-const var3953 var2451) ; Statement: r0 := @this: org.apache.ibatis.parsing.XNode 
(assert (not (= var3953 null-var2451)))
(define-const var519 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var519)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var519!1 String)
(assert (= var519!1 ""))
(assert true)
(define-const var2817 String (buildToString/-522395054 var3953 var519!1 0)) ; Statement: $r2 = specialinvoke r0.<org.apache.ibatis.parsing.XNode: java.lang.StringBuilder buildToString(java.lang.StringBuilder,int)>($r1, 0) 
(assert true)
(define-const var2363 String (toString/-2075883882 var2817)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), buildToString/-522395054=([org.apache.ibatis.parsing.XNode, java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2451=org.apache.ibatis.parsing.XNode, var3953=r0, var519=$r1, var2817=$r2, var2363=$r3}
; {org.apache.ibatis.parsing.XNode=var2451, r0=var3953, $r1=var519, $r2=var2817, $r3=var2363}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.parsing.XNode;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r0.<org.apache.ibatis.parsing.XNode: java.lang.StringBuilder buildToString(java.lang.StringBuilder,int)>($r1, 0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 1