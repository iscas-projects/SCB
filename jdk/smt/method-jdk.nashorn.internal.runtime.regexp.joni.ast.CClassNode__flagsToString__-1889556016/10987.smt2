(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3621 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun isNot/-493596159 (var3621) Bool)
(declare-fun isShare/128174005 (var3621) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3621 var3621)
(declare-const var1725 var3621) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode 
(assert (not (= var1725 null-var3621)))
(define-const var434 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var434)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var434!1 String)
(assert (= var434!1 ""))
(assert true)
(define-const var3016 Bool (isNot/-493596159 var1725)) ; Statement: $z0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode: boolean isNot()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode: boolean isShare()>() 
(assert (= (ite var3016 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1772 Bool (isShare/128174005 var1725)) ; Statement: $z1 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode: boolean isShare()>() 
 ; Statement: if $z1 == 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1772 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1487 String (toString/-2075883882 var434!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), isNot/-493596159=([jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode], boolean), isShare/128174005=([jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3621=jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode, var1725=r1, var434=$r0, var3016=$z0, var1772=$z1, var1487=$r2}
; {jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode=var3621, r1=var1725, $r0=var434, $z0=var3016, $z1=var1772, $r2=var1487}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode: boolean isNot()>();	if $z0 == 0 goto $z1 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode: boolean isShare()>();	$z1 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode: boolean isShare()>();	if $z1 == 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3