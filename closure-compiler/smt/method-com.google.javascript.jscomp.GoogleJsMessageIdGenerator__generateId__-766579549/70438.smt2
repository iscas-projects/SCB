(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1125 0)
(declare-sort var905 0)
(declare-sort var1377 0)
(declare-sort var2754 0)
(declare-sort var526 0)
(declare-sort var131 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2754_checkState/1431124798 (Bool) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1377_iterator/-912451715 (var1377) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun projectId/-1074716720 (var1125) String)
(declare-fun var526_isNullOrEmpty/1886904788 (String) Bool)
(declare-fun var131_generateId/821242613 (String String) Int)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-const null-var1125 var1125)
(declare-const null-String String)
(declare-const null-var1377 var1377)
(declare-const var3886 var1125) ; Statement: r3 := @this: com.google.javascript.jscomp.GoogleJsMessageIdGenerator 
(assert (not (= var3886 null-var1125)))
(declare-const var57 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var57 null-String)))
(declare-const var2914 var1377) ; Statement: r2 := @parameter1: java.util.List 
(assert (not (= var2914 null-var1377)))
 ; Statement: if r0 == null goto $z2 = 0 
(assert (not (= var57 null-String))) ; Negate: Cond: r0 == null  
(define-const var3805 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2)] 
(assert true) ; Non Conditional
;(assert (var2754_checkState/1431124798 var3805)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2) 

(declare-const var3805!1 Bool)
(define-const var3339 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3339)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3339!1 String)
(assert (= var3339!1 ""))
(define-const var1444 Iterator (var1377_iterator/-912451715 var2914)) ; Statement: $r11 = interfaceinvoke r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var503 Bool (Iterator_hasNext/-1669924200 var1444)) ; Statement: $z3 = interfaceinvoke $r11.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z3 == 0 goto r13 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var503 1 0) 0)) ; Cond: $z3 == 0 
(assert true)
(define-const var3326 String (toString/-2075883882 var3339!1)) ; Statement: r13 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3490 String (projectId/-1074716720 var3886)) ; Statement: $r4 = r3.<com.google.javascript.jscomp.GoogleJsMessageIdGenerator: java.lang.String projectId> 
(define-const var1270 Bool (var526_isNullOrEmpty/1886904788 var3490)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>($r4) 
 ; Statement: if $z0 == 0 goto $r5 = r3.<com.google.javascript.jscomp.GoogleJsMessageIdGenerator: java.lang.String projectId> 
(assert (= (ite var1270 1 0) 0)) ; Cond: $z0 == 0 
(define-const var794 String (projectId/-1074716720 var3886)) ; Statement: $r5 = r3.<com.google.javascript.jscomp.GoogleJsMessageIdGenerator: java.lang.String projectId> 
(define-const var1195 String (str.++ "\u0001: " var794)) ; Statement: $r14 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r5) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001: ") 
(assert true) ; Non Conditional
(define-const var2512 String (str.++ "\u0001\u0001" var1195 var57)) ; Statement: $r7 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r14, r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001") 
(define-const var554 Int (var131_generateId/821242613 var3326 var2512)) ; Statement: $l0 = staticinvoke <com.google.javascript.jscomp.GoogleJsMessageIdGenerator$MessageId: long generateId(java.lang.String,java.lang.String)>(r13, $r7) 
(define-const var3850 String (String_valueOf/-107395227 var554)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l0) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var2754_checkState/1431124798=([boolean], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1377_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), projectId/-1074716720=([com.google.javascript.jscomp.GoogleJsMessageIdGenerator], java.lang.String), var526_isNullOrEmpty/1886904788=([java.lang.String], boolean), var131_generateId/821242613=([java.lang.String, java.lang.String], long), String_valueOf/-107395227=([long], java.lang.String)}
; {var1125=com.google.javascript.jscomp.GoogleJsMessageIdGenerator, var3886=r3, var57=r0, var905=null_type, var1377=java.util.List, var2914=r2, var3805=$z2, var2754=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3339=$r1, var1444=$r11, var503=$z3, var3326=r13, var3490=$r4, var526=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var1270=$z0, var794=$r5, var1195=$r14, var2512=$r7, var131=com.google.javascript.jscomp.GoogleJsMessageIdGenerator$MessageId, var554=$l0, var3850=$r6}
; {com.google.javascript.jscomp.GoogleJsMessageIdGenerator=var1125, r3=var3886, r0=var57, null_type=var905, java.util.List=var1377, r2=var2914, $z2=var3805, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2754, $r1=var3339, $r11=var1444, $z3=var503, r13=var3326, $r4=var3490, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var526, $z0=var1270, $r5=var794, $r14=var1195, $r7=var2512, com.google.javascript.jscomp.GoogleJsMessageIdGenerator$MessageId=var131, $l0=var554, $r6=var3850}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.GoogleJsMessageIdGenerator;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.util.List;	if r0 == null goto $z2 = 0;	$z2 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2);	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r11 = interfaceinvoke r2.<java.util.List: java.util.Iterator iterator()>();	$z3 = interfaceinvoke $r11.<java.util.Iterator: boolean hasNext()>();	if $z3 == 0 goto r13 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	r13 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = r3.<com.google.javascript.jscomp.GoogleJsMessageIdGenerator: java.lang.String projectId>;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>($r4);	if $z0 == 0 goto $r5 = r3.<com.google.javascript.jscomp.GoogleJsMessageIdGenerator: java.lang.String projectId>;	$r5 = r3.<com.google.javascript.jscomp.GoogleJsMessageIdGenerator: java.lang.String projectId>;	$r14 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r5) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001: ");	$r7 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r14, r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001");	$l0 = staticinvoke <com.google.javascript.jscomp.GoogleJsMessageIdGenerator$MessageId: long generateId(java.lang.String,java.lang.String)>(r13, $r7);	$r6 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l0);	return $r6
;block_num 7