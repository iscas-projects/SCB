(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var703 0)
(declare-sort var2962 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var703 var703)
(declare-const null-String String)
(declare-const var804 var703) ; Statement: r6 := @this: org.javacc.jjtree.ASTNodeDescriptor 
(assert (not (= var804 null-var703)))
(declare-const var3177 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3177 null-String)))
(define-const var3898 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3898)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3898!1 String)
(assert (= var3898!1 ""))
(assert true)
(define-const var1421 String (append/672562846 var3898!1 "jjtree.openNodeScope(")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jjtree.openNodeScope(") 
(declare-const var3898!2 String)
(assert (= var3898!2 (str.++ var3898!1 "jjtree.openNodeScope(")))
(assert true)
(define-const var2135 String (append/672562846 var1421 var3177)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1421!1 String)
(assert (= var1421!1 (str.++ var1421 var3177)))
(assert true)
(define-const var2824 String (append/672562846 var2135 ");")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");") 
(declare-const var2135!1 String)
(assert (= var2135!1 (str.++ var2135 ");")))
(assert true)
(define-const var3410 String (toString/-2075883882 var2824)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var703=org.javacc.jjtree.ASTNodeDescriptor, var804=r6, var3177=r1, var2962=null_type, var3898=$r0, var1421=$r2, var2135=$r3, var2824=$r4, var3410=$r5}
; {org.javacc.jjtree.ASTNodeDescriptor=var703, r6=var804, r1=var3177, null_type=var2962, $r0=var3898, $r2=var1421, $r3=var2135, $r4=var2824, $r5=var3410}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.javacc.jjtree.ASTNodeDescriptor;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jjtree.openNodeScope(");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1