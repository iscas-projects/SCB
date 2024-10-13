(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3765 0)
(declare-sort var765 0)
(declare-sort var442 0)
(declare-sort var2637 0)
(declare-sort var1521 0)
(declare-sort var2375 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2637-init () var2637)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun resource/1141845807 (var3765) String)
(declare-fun append/-1031950772 (String var1521) String)
(declare-fun cast-from-var442-to-var1521 (var442) var1521)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1373483697 (var2637 String var2375) void)
(declare-fun cast-from-var442-to-var2375 (var442) var2375)
(declare-const null-var3765 var3765)
(declare-const null-var765 var765)
(declare-const null-var442 var442)
(declare-const var1512 var3765) ; Statement: r2 := @this: org.apache.ibatis.builder.xml.XMLMapperBuilder 
(assert (not (= var1512 null-var3765)))
(declare-const var3005 var765) ; Statement: r0 := @parameter0: org.apache.ibatis.parsing.XNode 
(assert (not (= var3005 null-var765)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2088 var442) ; Statement: $r10 := @caughtexception 
(assert (not (= var2088 null-var442)))
(define-const var2100 var2637 var2637-init) ; Statement: $r11 = new org.apache.ibatis.builder.BuilderException 
(define-const var1077 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1077)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1077!1 String)
(assert (= var1077!1 ""))
(assert true)
(define-const var1093 String (append/672562846 var1077!1 "Error parsing Mapper XML. The XML location is \u0027")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error parsing Mapper XML. The XML location is \'") 
(declare-const var1077!2 String)
(assert (= var1077!2 (str.++ var1077!1 "Error parsing Mapper XML. The XML location is \u0027")))
(define-const var2148 String (resource/1141845807 var1512)) ; Statement: $r13 = r2.<org.apache.ibatis.builder.xml.XMLMapperBuilder: java.lang.String resource> 
(assert true)
(define-const var3501 String (append/672562846 var1093 var2148)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var1093!1 String)
(assert (= var1093!1 (str.++ var1093 var2148)))
(assert true)
(define-const var723 String (append/672562846 var3501 "\u0027. Cause: ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'. Cause: ") 
(declare-const var3501!1 String)
(assert (= var3501!1 (str.++ var3501 "\u0027. Cause: ")))
(assert true)
(define-const var1514 String (append/-1031950772 var723 (cast-from-var442-to-var1521 var2088))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var723!1 String)
(assert (str.prefixof var723 var723!1))
(assert true)
(define-const var1063 String (toString/-2075883882 var1514)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1373483697 var2100 var1063 (cast-from-var442-to-var2375 var2088))) ; Statement: specialinvoke $r11.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r10) 

(declare-const var2100!1 var2637)
(declare-const var1063!1 String)
(declare-const var2088!1 var442)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var2637-init=([], org.apache.ibatis.builder.BuilderException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), resource/1141845807=([org.apache.ibatis.builder.xml.XMLMapperBuilder], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var442-to-var1521=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1373483697=([org.apache.ibatis.builder.BuilderException, java.lang.String, java.lang.Throwable], void), cast-from-var442-to-var2375=([java.lang.Exception], java.lang.Throwable)}
; {var3765=org.apache.ibatis.builder.xml.XMLMapperBuilder, var1512=r2, var765=org.apache.ibatis.parsing.XNode, var3005=r0, var442=java.lang.Exception, var2088=$r10, var2637=org.apache.ibatis.builder.BuilderException, var2100=$r11, var1077=$r12, var1093=$r14, var2148=$r13, var3501=$r15, var723=$r16, var1521=java.lang.Object, var1514=$r17, var1063=$r18, var2375=java.lang.Throwable}
; {org.apache.ibatis.builder.xml.XMLMapperBuilder=var3765, r2=var1512, org.apache.ibatis.parsing.XNode=var765, r0=var3005, java.lang.Exception=var442, $r10=var2088, org.apache.ibatis.builder.BuilderException=var2637, $r11=var2100, $r12=var1077, $r14=var1093, $r13=var2148, $r15=var3501, $r16=var723, java.lang.Object=var1521, $r17=var1514, $r18=var1063, java.lang.Throwable=var2375}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.ibatis.builder.xml.XMLMapperBuilder;	r0 := @parameter0: org.apache.ibatis.parsing.XNode;	$r10 := @caughtexception;	$r11 = new org.apache.ibatis.builder.BuilderException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error parsing Mapper XML. The XML location is \'");	$r13 = r2.<org.apache.ibatis.builder.xml.XMLMapperBuilder: java.lang.String resource>;	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'. Cause: ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r10);	throw $r11
;block_num 2