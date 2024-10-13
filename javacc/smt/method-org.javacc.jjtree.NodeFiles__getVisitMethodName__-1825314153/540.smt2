(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var559 0)
(declare-sort var2123 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/2110755883 (String String) void)
(declare-fun var2123_booleanValue/1280995494 (String) Bool)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-String String)
(declare-const var2846 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2846 null-String)))
(define-const var143 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/2110755883 var143 "visit")) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>(java.lang.String)>("visit") 

(declare-const var143!1 String)
(declare-const var2290 String)
(define-const var3934 Bool (var2123_booleanValue/1280995494 "VISITOR_METHOD_NAME_INCLUDES_TYPE_NAME")) ; Statement: $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("VISITOR_METHOD_NAME_INCLUDES_TYPE_NAME") 
 ; Statement: if $z0 == 0 goto $r1 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert (= (ite var3934 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1243 String (toString/-222306083 var143!1)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/2110755883=([java.lang.StringBuffer, java.lang.String], void), var2123_booleanValue/1280995494=([java.lang.String], boolean), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var2846=r2, var559=null_type, var143=$r0, var2290="visit", var2123=org.javacc.parser.Options, var3934=$z0, var1243=$r1}
; {r2=var2846, null_type=var559, $r0=var143, "visit"=var2290, org.javacc.parser.Options=var2123, $z0=var3934, $r1=var1243}
;seq <java.lang.StringBuffer: void <init>(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>(java.lang.String)>("visit");	$z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("VISITOR_METHOD_NAME_INCLUDES_TYPE_NAME");	if $z0 == 0 goto $r1 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	return $r1
;block_num 2