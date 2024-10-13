(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1448 0)
(declare-sort var2799 0)
(declare-sort var3548 0)
(declare-sort var613 0)
(declare-sort var2188 0)
(declare-sort var3911 0)
(declare-sort var1378 0)
(declare-sort var2659 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun applyCurrentNamespace/296309646 (var1448 String Bool) String)
(declare-fun configuration/-1217462027 (var2188) var613)
(declare-fun cast-from-var1448-to-var2188 (var1448) var2188)
(declare-fun var1378-init () var1378)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1853877964 (var1378 String var2659) void)
(declare-fun cast-from-var3911-to-var2659 (var3911) var2659)
(declare-const null-var1448 var1448)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3548 var3548)
(declare-const null-var3911 var3911)
(declare-const var3443 var1448) ; Statement: r0 := @this: org.apache.ibatis.builder.MapperBuilderAssistant 
(assert (not (= var3443 null-var1448)))
(declare-const var207 String) ; Statement: r17 := @parameter0: java.lang.String 
(assert (not (= var207 null-String)))
(declare-const var1380 ClassObject) ; Statement: r1 := @parameter1: java.lang.Class 
(assert (not (= var1380 null-ClassObject)))
(declare-const var1721 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var1721 null-String)))
(assert true)
(define-const var2886 String (applyCurrentNamespace/296309646 var3443 var207 (ite (= 1 1) true false))) ; Statement: r18 = virtualinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.String applyCurrentNamespace(java.lang.String,boolean)>(r17, 1) 
(define-const var3633 var3548 null-var3548) ; Statement: r19 = null 
 ; Statement: if r18 == null goto (branch) 
(assert (not (= var2886 null-String))) ; Negate: Cond: r18 == null  
(define-const var2263 var613 (configuration/-1217462027 (cast-from-var1448-to-var2188 var3443))) ; Statement: $r10 = r0.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.session.Configuration configuration> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2920 var3911) ; Statement: $r11 := @caughtexception 
(assert (not (= var2920 null-var3911)))
(define-const var2735 var1378 var1378-init) ; Statement: $r12 = new org.apache.ibatis.builder.IncompleteElementException 
(define-const var1132 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1132)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1132!1 String)
(assert (= var1132!1 ""))
(assert true)
(define-const var2867 String (append/672562846 var1132!1 "Could not find parameter map ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find parameter map ") 
(declare-const var1132!2 String)
(assert (= var1132!2 (str.++ var1132!1 "Could not find parameter map ")))
(assert true)
(define-const var1417 String (append/672562846 var2867 var2886)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r18) 
(declare-const var2867!1 String)
(assert (= var2867!1 (str.++ var2867 var2886)))
(assert true)
(define-const var3095 String (toString/-2075883882 var1417)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1853877964 var2735 var3095 (cast-from-var3911-to-var2659 var2920))) ; Statement: specialinvoke $r12.<org.apache.ibatis.builder.IncompleteElementException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r11) 

(declare-const var2735!1 var1378)
(declare-const var3095!1 String)
(declare-const var2920!1 var3911)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {applyCurrentNamespace/296309646=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.String, boolean], java.lang.String), configuration/-1217462027=([org.apache.ibatis.builder.BaseBuilder], org.apache.ibatis.session.Configuration), cast-from-var1448-to-var2188=([org.apache.ibatis.builder.MapperBuilderAssistant], org.apache.ibatis.builder.BaseBuilder), var1378-init=([], org.apache.ibatis.builder.IncompleteElementException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1853877964=([org.apache.ibatis.builder.IncompleteElementException, java.lang.String, java.lang.Throwable], void), cast-from-var3911-to-var2659=([java.lang.IllegalArgumentException], java.lang.Throwable)}
; {var1448=org.apache.ibatis.builder.MapperBuilderAssistant, var3443=r0, var207=r17, var2799=null_type, var1380=r1, var1721=r6, var2886=r18, var3548=org.apache.ibatis.mapping.ParameterMap, var3633=r19, var613=org.apache.ibatis.session.Configuration, var2188=org.apache.ibatis.builder.BaseBuilder, var2263=$r10, var3911=java.lang.IllegalArgumentException, var2920=$r11, var1378=org.apache.ibatis.builder.IncompleteElementException, var2735=$r12, var1132=$r13, var2867=$r14, var1417=$r15, var3095=$r16, var2659=java.lang.Throwable}
; {org.apache.ibatis.builder.MapperBuilderAssistant=var1448, r0=var3443, r17=var207, null_type=var2799, r1=var1380, r6=var1721, r18=var2886, org.apache.ibatis.mapping.ParameterMap=var3548, r19=var3633, org.apache.ibatis.session.Configuration=var613, org.apache.ibatis.builder.BaseBuilder=var2188, $r10=var2263, java.lang.IllegalArgumentException=var3911, $r11=var2920, org.apache.ibatis.builder.IncompleteElementException=var1378, $r12=var2735, $r13=var1132, $r14=var2867, $r15=var1417, $r16=var3095, java.lang.Throwable=var2659}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.builder.MapperBuilderAssistant;	r17 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.Class;	r6 := @parameter2: java.lang.String;	r18 = virtualinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.String applyCurrentNamespace(java.lang.String,boolean)>(r17, 1);	r19 = null;	if r18 == null goto (branch);	$r10 = r0.<org.apache.ibatis.builder.MapperBuilderAssistant: org.apache.ibatis.session.Configuration configuration>;	$r11 := @caughtexception;	$r12 = new org.apache.ibatis.builder.IncompleteElementException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find parameter map ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r18);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<org.apache.ibatis.builder.IncompleteElementException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r11);	throw $r12
;block_num 3