(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2555 0)
(declare-sort var1974 0)
(declare-sort var3417 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3417) void)
(declare-fun cast-from-var2555-to-var3417 (var2555) var3417)
(declare-fun fileName/-502228817 (var2555) String)
(declare-fun className/-502228817 (var2555) String)
(declare-fun methodName/-502228817 (var2555) String)
(declare-fun lineNumber/-502228817 (var2555) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun var2555_appendFragment/1487031702 (String String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun fullInfo/-502228817 (var2555) String)
(declare-const null-var2555 var2555)
(declare-const null-String String)
(declare-const var1256 var2555) ; Statement: r0 := @this: org.apache.log4j.spi.LocationInfo 
(assert (not (= var1256 null-var2555)))
(declare-const var1099 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1099 null-String)))
(declare-const var691 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var691 null-String)))
(declare-const var2883 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var2883 null-String)))
(declare-const var732 String) ; Statement: r4 := @parameter3: java.lang.String 
(assert (not (= var732 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2555-to-var3417 var1256))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1256!1 var2555)
(declare-const var1256!2 var2555)
(assert (not (= var1256!2 null-var2555)))
(assert (= (fileName/-502228817 var1256!2) var1099)) ; Statement: r0.<org.apache.log4j.spi.LocationInfo: java.lang.String fileName> = r1 
(declare-const var1256!3 var2555)
(assert (not (= var1256!3 null-var2555)))
(assert (= (className/-502228817 var1256!3) var691)) ; Statement: r0.<org.apache.log4j.spi.LocationInfo: java.lang.String className> = r2 
(declare-const var1256!4 var2555)
(assert (not (= var1256!4 null-var2555)))
(assert (= (methodName/-502228817 var1256!4) var2883)) ; Statement: r0.<org.apache.log4j.spi.LocationInfo: java.lang.String methodName> = r3 
(declare-const var1256!5 var2555)
(assert (not (= var1256!5 null-var2555)))
(assert (= (lineNumber/-502228817 var1256!5) var732)) ; Statement: r0.<org.apache.log4j.spi.LocationInfo: java.lang.String lineNumber> = r4 
(define-const var1286 String String-init) ; Statement: $r5 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1286)) ; Statement: specialinvoke $r5.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1286!1 String)
;(assert (var2555_appendFragment/1487031702 var1286!1 var691)) ; Statement: staticinvoke <org.apache.log4j.spi.LocationInfo: void appendFragment(java.lang.StringBuffer,java.lang.String)>($r5, r2) 

(declare-const var1286!2 String)
(declare-const var691!1 String)
(assert true)
;(assert (append/1560614132 var1286!2 ".")) ; Statement: virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".") 
(declare-const var1286!3 String)
(assert (str.prefixof var1286!2 var1286!3))
;(assert (var2555_appendFragment/1487031702 var1286!3 var2883)) ; Statement: staticinvoke <org.apache.log4j.spi.LocationInfo: void appendFragment(java.lang.StringBuffer,java.lang.String)>($r5, r3) 

(declare-const var1286!4 String)
(declare-const var2883!1 String)
(assert true)
;(assert (append/1560614132 var1286!4 "(")) ; Statement: virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("(") 
(declare-const var1286!5 String)
(assert (str.prefixof var1286!4 var1286!5))
;(assert (var2555_appendFragment/1487031702 var1286!5 var1099)) ; Statement: staticinvoke <org.apache.log4j.spi.LocationInfo: void appendFragment(java.lang.StringBuffer,java.lang.String)>($r5, r1) 

(declare-const var1286!6 String)
(declare-const var1099!1 String)
(assert true)
;(assert (append/1560614132 var1286!6 ":")) ; Statement: virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(":") 
(declare-const var1286!7 String)
(assert (str.prefixof var1286!6 var1286!7))
;(assert (var2555_appendFragment/1487031702 var1286!7 var732)) ; Statement: staticinvoke <org.apache.log4j.spi.LocationInfo: void appendFragment(java.lang.StringBuffer,java.lang.String)>($r5, r4) 

(declare-const var1286!8 String)
(declare-const var732!1 String)
(assert true)
;(assert (append/1560614132 var1286!8 ")")) ; Statement: virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(")") 
(declare-const var1286!9 String)
(assert (str.prefixof var1286!8 var1286!9))
(assert true)
(define-const var3159 String (toString/-222306083 var1286!9)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>() 
(declare-const var1256!6 var2555)
(assert (not (= var1256!6 null-var2555)))
(assert (= (fullInfo/-502228817 var1256!6) var3159)) ; Statement: r0.<org.apache.log4j.spi.LocationInfo: java.lang.String fullInfo> = $r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2555-to-var3417=([org.apache.log4j.spi.LocationInfo], java.lang.Object), fileName/-502228817=([org.apache.log4j.spi.LocationInfo], java.lang.String), className/-502228817=([org.apache.log4j.spi.LocationInfo], java.lang.String), methodName/-502228817=([org.apache.log4j.spi.LocationInfo], java.lang.String), lineNumber/-502228817=([org.apache.log4j.spi.LocationInfo], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), var2555_appendFragment/1487031702=([java.lang.StringBuffer, java.lang.String], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), fullInfo/-502228817=([org.apache.log4j.spi.LocationInfo], java.lang.String)}
; {var2555=org.apache.log4j.spi.LocationInfo, var1256=r0, var1099=r1, var1974=null_type, var691=r2, var2883=r3, var732=r4, var3417=java.lang.Object, var1286=$r5, var3159=$r6}
; {org.apache.log4j.spi.LocationInfo=var2555, r0=var1256, r1=var1099, null_type=var1974, r2=var691, r3=var2883, r4=var732, java.lang.Object=var3417, $r5=var1286, $r6=var3159}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.spi.LocationInfo;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.apache.log4j.spi.LocationInfo: java.lang.String fileName> = r1;	r0.<org.apache.log4j.spi.LocationInfo: java.lang.String className> = r2;	r0.<org.apache.log4j.spi.LocationInfo: java.lang.String methodName> = r3;	r0.<org.apache.log4j.spi.LocationInfo: java.lang.String lineNumber> = r4;	$r5 = new java.lang.StringBuffer;	specialinvoke $r5.<java.lang.StringBuffer: void <init>()>();	staticinvoke <org.apache.log4j.spi.LocationInfo: void appendFragment(java.lang.StringBuffer,java.lang.String)>($r5, r2);	virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".");	staticinvoke <org.apache.log4j.spi.LocationInfo: void appendFragment(java.lang.StringBuffer,java.lang.String)>($r5, r3);	virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("(");	staticinvoke <org.apache.log4j.spi.LocationInfo: void appendFragment(java.lang.StringBuffer,java.lang.String)>($r5, r1);	virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(":");	staticinvoke <org.apache.log4j.spi.LocationInfo: void appendFragment(java.lang.StringBuffer,java.lang.String)>($r5, r4);	virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(")");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>();	r0.<org.apache.log4j.spi.LocationInfo: java.lang.String fullInfo> = $r6;	return
;block_num 1