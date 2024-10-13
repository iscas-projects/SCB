(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2676 0)
(declare-sort var125 0)
(declare-sort var3617 0)
(declare-sort var809 0)
(declare-sort var1293 0)
(declare-sort var2326 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2326_findAndSubst/1425145515 (String var809) String)
(declare-fun var2326_toBoolean/2053430371 (String Bool) Bool)
(declare-const null-var2676 var2676)
(declare-const null-var125 var125)
(declare-const null-String String)
(declare-const null-var809 var809)
(declare-const null-var1293 var1293)
(declare-const var84 var2676) ; Statement: r11 := @this: org.apache.log4j.PropertyConfigurator 
(assert (not (= var84 null-var2676)))
(declare-const var3009 var125) ; Statement: r13 := @parameter0: org.apache.log4j.spi.ErrorHandler 
(assert (not (= var3009 null-var125)))
(declare-const var1338 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1338 null-String)))
(declare-const var856 var809) ; Statement: r4 := @parameter2: java.util.Properties 
(assert (not (= var856 null-var809)))
(declare-const var555 var1293) ; Statement: r15 := @parameter3: org.apache.log4j.spi.LoggerRepository 
(assert (not (= var555 null-var1293)))
(define-const var3382 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3382)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3382!1 String)
(assert true)
(define-const var452 String (append/1560614132 var3382!1 var1338)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var3382!2 String)
(assert (str.prefixof var3382!1 var3382!2))
(assert true)
(define-const var3692 String (append/1560614132 var452 "root-ref")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("root-ref") 
(declare-const var452!1 String)
(assert (str.prefixof var452 var452!1))
(assert true)
(define-const var1165 String (toString/-222306083 var3692)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var1525 String (var2326_findAndSubst/1425145515 var1165 var856)) ; Statement: $r6 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.String findAndSubst(java.lang.String,java.util.Properties)>($r5, r4) 
(define-const var2240 Bool (var2326_toBoolean/2053430371 var1525 (ite (= 1 0) true false))) ; Statement: z0 = staticinvoke <org.apache.log4j.helpers.OptionConverter: boolean toBoolean(java.lang.String,boolean)>($r6, 0) 
 ; Statement: if z0 == 0 goto $r7 = new java.lang.StringBuffer 
(assert (= (ite var2240 1 0) 0)) ; Cond: z0 == 0 
(define-const var1483 String String-init) ; Statement: $r7 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1483)) ; Statement: specialinvoke $r7.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1483!1 String)
(assert true)
(define-const var1886 String (append/1560614132 var1483!1 var1338)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var1483!2 String)
(assert (str.prefixof var1483!1 var1483!2))
(assert true)
(define-const var2024 String (append/1560614132 var1886 "logger-ref")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("logger-ref") 
(declare-const var1886!1 String)
(assert (str.prefixof var1886 var1886!1))
(assert true)
(define-const var3642 String (toString/-222306083 var2024)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var2656 String (var2326_findAndSubst/1425145515 var3642 var856)) ; Statement: $r18 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.String findAndSubst(java.lang.String,java.util.Properties)>($r10, r4) 
 ; Statement: if $r18 == null goto $r20 = new java.lang.StringBuffer 
(assert (= var2656 null-String)) ; Cond: $r18 == null 
(define-const var1081 String String-init) ; Statement: $r20 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1081)) ; Statement: specialinvoke $r20.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1081!1 String)
(assert true)
(define-const var2080 String (append/1560614132 var1081!1 var1338)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var1081!2 String)
(assert (str.prefixof var1081!1 var1081!2))
(assert true)
(define-const var1836 String (append/1560614132 var2080 "appender-ref")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("appender-ref") 
(declare-const var2080!1 String)
(assert (str.prefixof var2080 var2080!1))
(assert true)
(define-const var3116 String (toString/-222306083 var1836)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var818 String (var2326_findAndSubst/1425145515 var3116 var856)) ; Statement: $r24 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.String findAndSubst(java.lang.String,java.util.Properties)>($r23, r4) 
 ; Statement: if $r24 == null goto return 
(assert (= var818 null-String)) ; Cond: $r24 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2326_findAndSubst/1425145515=([java.lang.String, java.util.Properties], java.lang.String), var2326_toBoolean/2053430371=([java.lang.String, boolean], boolean)}
; {var2676=org.apache.log4j.PropertyConfigurator, var84=r11, var125=org.apache.log4j.spi.ErrorHandler, var3009=r13, var1338=r1, var3617=null_type, var809=java.util.Properties, var856=r4, var1293=org.apache.log4j.spi.LoggerRepository, var555=r15, var3382=$r0, var452=$r2, var3692=$r3, var1165=$r5, var2326=org.apache.log4j.helpers.OptionConverter, var1525=$r6, var2240=z0, var1483=$r7, var1886=$r8, var2024=$r9, var3642=$r10, var2656=$r18, var1081=$r20, var2080=$r21, var1836=$r22, var3116=$r23, var818=$r24}
; {org.apache.log4j.PropertyConfigurator=var2676, r11=var84, org.apache.log4j.spi.ErrorHandler=var125, r13=var3009, r1=var1338, null_type=var3617, java.util.Properties=var809, r4=var856, org.apache.log4j.spi.LoggerRepository=var1293, r15=var555, $r0=var3382, $r2=var452, $r3=var3692, $r5=var1165, org.apache.log4j.helpers.OptionConverter=var2326, $r6=var1525, z0=var2240, $r7=var1483, $r8=var1886, $r9=var2024, $r10=var3642, $r18=var2656, $r20=var1081, $r21=var2080, $r22=var1836, $r23=var3116, $r24=var818}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 3,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 6,"<java.lang.StringBuffer: java.lang.String toString()>": 3}
;stmts r11 := @this: org.apache.log4j.PropertyConfigurator;	r13 := @parameter0: org.apache.log4j.spi.ErrorHandler;	r1 := @parameter1: java.lang.String;	r4 := @parameter2: java.util.Properties;	r15 := @parameter3: org.apache.log4j.spi.LoggerRepository;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("root-ref");	$r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.String toString()>();	$r6 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.String findAndSubst(java.lang.String,java.util.Properties)>($r5, r4);	z0 = staticinvoke <org.apache.log4j.helpers.OptionConverter: boolean toBoolean(java.lang.String,boolean)>($r6, 0);	if z0 == 0 goto $r7 = new java.lang.StringBuffer;	$r7 = new java.lang.StringBuffer;	specialinvoke $r7.<java.lang.StringBuffer: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("logger-ref");	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	$r18 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.String findAndSubst(java.lang.String,java.util.Properties)>($r10, r4);	if $r18 == null goto $r20 = new java.lang.StringBuffer;	$r20 = new java.lang.StringBuffer;	specialinvoke $r20.<java.lang.StringBuffer: void <init>()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r22 = virtualinvoke $r21.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("appender-ref");	$r23 = virtualinvoke $r22.<java.lang.StringBuffer: java.lang.String toString()>();	$r24 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.String findAndSubst(java.lang.String,java.util.Properties)>($r23, r4);	if $r24 == null goto return;	return
;block_num 4