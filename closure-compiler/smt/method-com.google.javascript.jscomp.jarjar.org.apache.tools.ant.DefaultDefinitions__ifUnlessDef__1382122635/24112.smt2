(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1702 0)
(declare-sort var483 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun componentDef/-211428618 (var1702 String String String) void)
(declare-const null-var1702 var1702)
(declare-const null-String String)
(declare-const var1314 var1702) ; Statement: r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultDefinitions 
(assert (not (= var1314 null-var1702)))
(declare-const var789 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var789 null-String)))
(declare-const var3275 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3275 null-String)))
(define-const var3514 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3514)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3514!1 String)
(assert (= var3514!1 ""))
(assert true)
(define-const var1680 String (append/672562846 var3514!1 "com.google.javascript.jscomp.jarjar.org.apache.tools.ant.attribute.")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("com.google.javascript.jscomp.jarjar.org.apache.tools.ant.attribute.") 
(declare-const var3514!2 String)
(assert (= var3514!2 (str.++ var3514!1 "com.google.javascript.jscomp.jarjar.org.apache.tools.ant.attribute.")))
(assert true)
(define-const var575 String (append/672562846 var1680 var3275)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1680!1 String)
(assert (= var1680!1 (str.++ var1680 var3275)))
(assert true)
(define-const var412 String (toString/-2075883882 var575)) ; Statement: r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (componentDef/-211428618 var1314 "ant:if" var789 var412)) ; Statement: specialinvoke r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultDefinitions: void componentDef(java.lang.String,java.lang.String,java.lang.String)>("ant:if", r6, r4) 

(declare-const var1314!1 var1702)
(declare-const var2656 String)
(declare-const var789!1 String)
(declare-const var412!1 String)
(define-const var2243 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2243)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2243!1 String)
(assert (= var2243!1 ""))
(assert true)
(define-const var3826 String (append/672562846 var2243!1 var412!1)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2243!2 String)
(assert (= var2243!2 (str.++ var2243!1 var412!1)))
(assert true)
(define-const var429 String (append/672562846 var3826 "$Unless")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$Unless") 
(declare-const var3826!1 String)
(assert (= var3826!1 (str.++ var3826 "$Unless")))
(assert true)
(define-const var3299 String (toString/-2075883882 var429)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (componentDef/-211428618 var1314!1 "ant:unless" var789!1 var3299)) ; Statement: specialinvoke r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultDefinitions: void componentDef(java.lang.String,java.lang.String,java.lang.String)>("ant:unless", r6, $r10) 

(declare-const var1314!2 var1702)
(declare-const var2849 String)
(declare-const var789!2 String)
(declare-const var3299!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), componentDef/-211428618=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultDefinitions, java.lang.String, java.lang.String, java.lang.String], void)}
; {var1702=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultDefinitions, var1314=r5, var789=r6, var483=null_type, var3275=r1, var3514=$r0, var1680=$r2, var575=$r3, var412=r4, var2656="ant:if", var2243=$r7, var3826=$r8, var429=$r9, var3299=$r10, var2849="ant:unless"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultDefinitions=var1702, r5=var1314, r6=var789, null_type=var483, r1=var3275, $r0=var3514, $r2=var1680, $r3=var575, r4=var412, "ant:if"=var2656, $r7=var2243, $r8=var3826, $r9=var429, $r10=var3299, "ant:unless"=var2849}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultDefinitions;	r6 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("com.google.javascript.jscomp.jarjar.org.apache.tools.ant.attribute.");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultDefinitions: void componentDef(java.lang.String,java.lang.String,java.lang.String)>("ant:if", r6, r4);	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$Unless");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultDefinitions: void componentDef(java.lang.String,java.lang.String,java.lang.String)>("ant:unless", r6, $r10);	return
;block_num 1