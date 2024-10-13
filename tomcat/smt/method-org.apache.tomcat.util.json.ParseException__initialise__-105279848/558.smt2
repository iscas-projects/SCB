(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3332 0)
(declare-sort var2724 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun getLength-Arr-Int-2 ((Array Int (Array Int Int))) Int)
(declare-fun next/-518265557 (var3332) var3332)
(declare-fun beginLine/-518265557 (var3332) Int)
(declare-fun beginColumn/-518265557 (var3332) Int)
(declare-fun cast-from-Int-to-String (Int) String)
(declare-const null-var3332 var3332)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2724-EOL String)
(declare-const var650 var3332) ; Statement: r2 := @parameter0: org.apache.tomcat.util.json.Token 
(assert (not (= var650 null-var3332)))
(declare-const var680 (Array Int (Array Int Int))) ; Statement: r1 := @parameter1: int[][] 
(assert (not (= var680 null-__Array__Int____Array__Int__Int____)))
(declare-const var2606 (Array Int String)) ; Statement: r9 := @parameter2: java.lang.String[] 
(assert (not (= var2606 null-__Array__Int__String__)))
(define-const var3965 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3965)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3965!1 String)
(define-const var2560 Int 0) ; Statement: i12 = 0 
(define-const var2136 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
(define-const var2381 Int (getLength-Arr-Int-2 var680)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i13 >= $i0 goto r26 = "Encountered \"" 
(assert (>= var2136 var2381)) ; Cond: i13 >= $i0 
(define-const var3205 String "Encountered \u0022") ; Statement: r26 = "Encountered \"" 
(define-const var1683 var3332 (next/-518265557 var650)) ; Statement: r27 = r2.<org.apache.tomcat.util.json.Token: org.apache.tomcat.util.json.Token next> 
(define-const var1155 Int 0) ; Statement: i16 = 0 
(assert true) ; Non Conditional
 ; Statement: if i16 >= i12 goto $r3 = r2.<org.apache.tomcat.util.json.Token: org.apache.tomcat.util.json.Token next> 
(assert (>= var1155 var2560)) ; Cond: i16 >= i12 
(define-const var1330 var3332 (next/-518265557 var650)) ; Statement: $r3 = r2.<org.apache.tomcat.util.json.Token: org.apache.tomcat.util.json.Token next> 
(define-const var312 Int (beginLine/-518265557 var1330)) ; Statement: $i2 = $r3.<org.apache.tomcat.util.json.Token: int beginLine> 
(define-const var465 var3332 (next/-518265557 var650)) ; Statement: $r4 = r2.<org.apache.tomcat.util.json.Token: org.apache.tomcat.util.json.Token next> 
(define-const var2210 Int (beginColumn/-518265557 var465)) ; Statement: $i1 = $r4.<org.apache.tomcat.util.json.Token: int beginColumn> 
(define-const var2705 String (str.++ "\u0001\u0022 at line \u0001, column \u0001" var3205 (cast-from-Int-to-String var312) (cast-from-Int-to-String var2210))) ; Statement: $r14 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,int,int)>(r26, $i2, $i1) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\" at line \u0001, column \u0001") 
(define-const var3870 String var2724-EOL) ; Statement: $r5 = <org.apache.tomcat.util.json.ParseException: java.lang.String EOL> 
(define-const var2967 String (str.++ "\u0001.\u0001" var2705 var3870)) ; Statement: $r15 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r14, $r5) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001.\u0001") 
(define-const var3592 String var2967) ; Statement: r31 = $r15 
(define-const var3197 Int (getLength-Arr-Int-2 var680)) ; Statement: $i3 = lengthof r1 
 ; Statement: if $i3 != 0 goto $i4 = lengthof r1 
(assert (not (not (= var3197 0)))) ; Negate: Cond: $i3 != 0  
 ; Statement: goto [?= return r31] 
(assert true) ; Non Conditional
 ; Statement: return r31 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), getLength-Arr-Int-2=([int[][]], int), next/-518265557=([org.apache.tomcat.util.json.Token], org.apache.tomcat.util.json.Token), beginLine/-518265557=([org.apache.tomcat.util.json.Token], int), beginColumn/-518265557=([org.apache.tomcat.util.json.Token], int), cast-from-Int-to-String=([int], java.lang.String)}
; {var3332=org.apache.tomcat.util.json.Token, var650=r2, var680=r1, var2606=r9, var3965=$r0, var2560=i12, var2136=i13, var2381=$i0, var3205=r26, var1683=r27, var1155=i16, var1330=$r3, var312=$i2, var465=$r4, var2210=$i1, var2705=$r14, var2724=org.apache.tomcat.util.json.ParseException, var3870=$r5, var2967=$r15, var3592=r31, var3197=$i3}
; {org.apache.tomcat.util.json.Token=var3332, r2=var650, r1=var680, r9=var2606, $r0=var3965, i12=var2560, i13=var2136, $i0=var2381, r26=var3205, r27=var1683, i16=var1155, $r3=var1330, $i2=var312, $r4=var465, $i1=var2210, $r14=var2705, org.apache.tomcat.util.json.ParseException=var2724, $r5=var3870, $r15=var2967, r31=var3592, $i3=var3197}
;seq <java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1}
;stmts r2 := @parameter0: org.apache.tomcat.util.json.Token;	r1 := @parameter1: int[][];	r9 := @parameter2: java.lang.String[];	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	i12 = 0;	i13 = 0;	$i0 = lengthof r1;	if i13 >= $i0 goto r26 = "Encountered \"";	r26 = "Encountered \"";	r27 = r2.<org.apache.tomcat.util.json.Token: org.apache.tomcat.util.json.Token next>;	i16 = 0;	if i16 >= i12 goto $r3 = r2.<org.apache.tomcat.util.json.Token: org.apache.tomcat.util.json.Token next>;	$r3 = r2.<org.apache.tomcat.util.json.Token: org.apache.tomcat.util.json.Token next>;	$i2 = $r3.<org.apache.tomcat.util.json.Token: int beginLine>;	$r4 = r2.<org.apache.tomcat.util.json.Token: org.apache.tomcat.util.json.Token next>;	$i1 = $r4.<org.apache.tomcat.util.json.Token: int beginColumn>;	$r14 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,int,int)>(r26, $i2, $i1) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\" at line \u0001, column \u0001");	$r5 = <org.apache.tomcat.util.json.ParseException: java.lang.String EOL>;	$r15 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r14, $r5) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001.\u0001");	r31 = $r15;	$i3 = lengthof r1;	if $i3 != 0 goto $i4 = lengthof r1;	goto [?= return r31];	return r31
;block_num 7