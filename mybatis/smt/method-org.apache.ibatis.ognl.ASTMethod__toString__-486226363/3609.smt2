(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1333 0)
(declare-sort var401 0)
(declare-sort var3162 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun methodName/-1924383379 (var1333) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun children/1926309034 (var3162) (Array Int var401))
(declare-fun cast-from-var1333-to-var3162 (var1333) var3162)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1333 var1333)
(declare-const null-__Array__Int__var401__ (Array Int var401))
(declare-const var2488 var1333) ; Statement: r1 := @this: org.apache.ibatis.ognl.ASTMethod 
(assert (not (= var2488 null-var1333)))
(define-const var325 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var832 String (methodName/-1924383379 var2488)) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.ASTMethod: java.lang.String methodName> 
(assert true)
;(assert (<init>/-1061048412 var325 var832)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2) 
(declare-const var325!1 String)
(assert (= var325!1 var832))
(assert true)
;(assert (append/672562846 var325!1 "(")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var325!2 String)
(assert (= var325!2 (str.++ var325!1 "(")))
(define-const var2441 (Array Int var401) (children/1926309034 (cast-from-var1333-to-var3162 var2488))) ; Statement: $r3 = r1.<org.apache.ibatis.ognl.ASTMethod: org.apache.ibatis.ognl.Node[] children> 
 ; Statement: if $r3 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(assert (= var2441 null-__Array__Int__var401__)) ; Cond: $r3 == null 
(assert true)
;(assert (append/672562846 var325!2 ")")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var325!3 String)
(assert (= var325!3 (str.++ var325!2 ")")))
(assert true)
(define-const var3194 String (toString/-2075883882 var325!3)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), methodName/-1924383379=([org.apache.ibatis.ognl.ASTMethod], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), cast-from-var1333-to-var3162=([org.apache.ibatis.ognl.ASTMethod], org.apache.ibatis.ognl.SimpleNode), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1333=org.apache.ibatis.ognl.ASTMethod, var2488=r1, var325=$r0, var832=$r2, var401=org.apache.ibatis.ognl.Node, var3162=org.apache.ibatis.ognl.SimpleNode, var2441=$r3, var3194=$r8}
; {org.apache.ibatis.ognl.ASTMethod=var1333, r1=var2488, $r0=var325, $r2=var832, org.apache.ibatis.ognl.Node=var401, org.apache.ibatis.ognl.SimpleNode=var3162, $r3=var2441, $r8=var3194}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ASTMethod;	$r0 = new java.lang.StringBuilder;	$r2 = r1.<org.apache.ibatis.ognl.ASTMethod: java.lang.String methodName>;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r3 = r1.<org.apache.ibatis.ognl.ASTMethod: org.apache.ibatis.ognl.Node[] children>;	if $r3 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2