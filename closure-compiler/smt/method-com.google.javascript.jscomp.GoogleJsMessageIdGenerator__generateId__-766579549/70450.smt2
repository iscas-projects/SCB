(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3233 0)
(declare-sort var1682 0)
(declare-sort var2475 0)
(declare-sort var2491 0)
(declare-sort var634 0)
(declare-sort var849 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2491_checkState/1431124798 (Bool) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2475_iterator/-912451715 (var2475) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun projectId/-1074716720 (var3233) String)
(declare-fun var634_isNullOrEmpty/1886904788 (String) Bool)
(declare-fun var849_generateId/821242613 (String String) Int)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-const null-var3233 var3233)
(declare-const null-String String)
(declare-const null-var2475 var2475)
(declare-const var2083 var3233) ; Statement: r3 := @this: com.google.javascript.jscomp.GoogleJsMessageIdGenerator 
(assert (not (= var2083 null-var3233)))
(declare-const var1103 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1103 null-String)))
(declare-const var1611 var2475) ; Statement: r2 := @parameter1: java.util.List 
(assert (not (= var1611 null-var2475)))
 ; Statement: if r0 == null goto $z2 = 0 
(assert (= var1103 null-String)) ; Cond: r0 == null 
(define-const var2725 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
;(assert (var2491_checkState/1431124798 var2725)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2) 

(declare-const var2725!1 Bool)
(define-const var1378 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1378)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1378!1 String)
(assert (= var1378!1 ""))
(define-const var210 Iterator (var2475_iterator/-912451715 var1611)) ; Statement: $r11 = interfaceinvoke r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var338 Bool (Iterator_hasNext/-1669924200 var210)) ; Statement: $z3 = interfaceinvoke $r11.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z3 == 0 goto r13 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var338 1 0) 0)) ; Cond: $z3 == 0 
(assert true)
(define-const var1196 String (toString/-2075883882 var1378!1)) ; Statement: r13 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var146 String (projectId/-1074716720 var2083)) ; Statement: $r4 = r3.<com.google.javascript.jscomp.GoogleJsMessageIdGenerator: java.lang.String projectId> 
(define-const var1704 Bool (var634_isNullOrEmpty/1886904788 var146)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>($r4) 
 ; Statement: if $z0 == 0 goto $r5 = r3.<com.google.javascript.jscomp.GoogleJsMessageIdGenerator: java.lang.String projectId> 
(assert (not (= (ite var1704 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1771 String "") ; Statement: $r14 = "" 
 ; Statement: goto [?= $r7 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r14, r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001")] 
(assert true) ; Non Conditional
(define-const var1316 String (str.++ "\u0001\u0001" var1771 var1103)) ; Statement: $r7 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r14, r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001") 
(define-const var1094 Int (var849_generateId/821242613 var1196 var1316)) ; Statement: $l0 = staticinvoke <com.google.javascript.jscomp.GoogleJsMessageIdGenerator$MessageId: long generateId(java.lang.String,java.lang.String)>(r13, $r7) 
(define-const var2018 String (String_valueOf/-107395227 var1094)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l0) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var2491_checkState/1431124798=([boolean], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2475_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), projectId/-1074716720=([com.google.javascript.jscomp.GoogleJsMessageIdGenerator], java.lang.String), var634_isNullOrEmpty/1886904788=([java.lang.String], boolean), var849_generateId/821242613=([java.lang.String, java.lang.String], long), String_valueOf/-107395227=([long], java.lang.String)}
; {var3233=com.google.javascript.jscomp.GoogleJsMessageIdGenerator, var2083=r3, var1103=r0, var1682=null_type, var2475=java.util.List, var1611=r2, var2725=$z2, var2491=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1378=$r1, var210=$r11, var338=$z3, var1196=r13, var146=$r4, var634=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var1704=$z0, var1771=$r14, var1316=$r7, var849=com.google.javascript.jscomp.GoogleJsMessageIdGenerator$MessageId, var1094=$l0, var2018=$r6}
; {com.google.javascript.jscomp.GoogleJsMessageIdGenerator=var3233, r3=var2083, r0=var1103, null_type=var1682, java.util.List=var2475, r2=var1611, $z2=var2725, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2491, $r1=var1378, $r11=var210, $z3=var338, r13=var1196, $r4=var146, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var634, $z0=var1704, $r14=var1771, $r7=var1316, com.google.javascript.jscomp.GoogleJsMessageIdGenerator$MessageId=var849, $l0=var1094, $r6=var2018}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.GoogleJsMessageIdGenerator;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.util.List;	if r0 == null goto $z2 = 0;	$z2 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2);	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r11 = interfaceinvoke r2.<java.util.List: java.util.Iterator iterator()>();	$z3 = interfaceinvoke $r11.<java.util.Iterator: boolean hasNext()>();	if $z3 == 0 goto r13 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	r13 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = r3.<com.google.javascript.jscomp.GoogleJsMessageIdGenerator: java.lang.String projectId>;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>($r4);	if $z0 == 0 goto $r5 = r3.<com.google.javascript.jscomp.GoogleJsMessageIdGenerator: java.lang.String projectId>;	$r14 = "";	goto [?= $r7 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r14, r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001")];	$r7 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r14, r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001");	$l0 = staticinvoke <com.google.javascript.jscomp.GoogleJsMessageIdGenerator$MessageId: long generateId(java.lang.String,java.lang.String)>(r13, $r7);	$r6 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l0);	return $r6
;block_num 7