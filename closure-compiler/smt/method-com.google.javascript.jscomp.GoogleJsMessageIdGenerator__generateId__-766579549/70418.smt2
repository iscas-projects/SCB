(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1297 0)
(declare-sort var242 0)
(declare-sort var1855 0)
(declare-sort var1379 0)
(declare-sort var687 0)
(declare-sort var1149 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1379_checkState/1431124798 (Bool) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1855_iterator/-912451715 (var1855) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun projectId/-1074716720 (var1297) String)
(declare-fun var687_isNullOrEmpty/1886904788 (String) Bool)
(declare-fun var1149_generateId/821242613 (String String) Int)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-const null-var1297 var1297)
(declare-const null-String String)
(declare-const null-var1855 var1855)
(declare-const var371 var1297) ; Statement: r3 := @this: com.google.javascript.jscomp.GoogleJsMessageIdGenerator 
(assert (not (= var371 null-var1297)))
(declare-const var620 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var620 null-String)))
(declare-const var1788 var1855) ; Statement: r2 := @parameter1: java.util.List 
(assert (not (= var1788 null-var1855)))
 ; Statement: if r0 == null goto $z2 = 0 
(assert (not (= var620 null-String))) ; Negate: Cond: r0 == null  
(define-const var3907 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2)] 
(assert true) ; Non Conditional
;(assert (var1379_checkState/1431124798 var3907)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2) 

(declare-const var3907!1 Bool)
(define-const var1371 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1371)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1371!1 String)
(assert (= var1371!1 ""))
(define-const var1142 Iterator (var1855_iterator/-912451715 var1788)) ; Statement: $r11 = interfaceinvoke r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3727 Bool (Iterator_hasNext/-1669924200 var1142)) ; Statement: $z3 = interfaceinvoke $r11.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z3 == 0 goto r13 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3727 1 0) 0)) ; Cond: $z3 == 0 
(assert true)
(define-const var3054 String (toString/-2075883882 var1371!1)) ; Statement: r13 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3928 String (projectId/-1074716720 var371)) ; Statement: $r4 = r3.<com.google.javascript.jscomp.GoogleJsMessageIdGenerator: java.lang.String projectId> 
(define-const var2125 Bool (var687_isNullOrEmpty/1886904788 var3928)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>($r4) 
 ; Statement: if $z0 == 0 goto $r5 = r3.<com.google.javascript.jscomp.GoogleJsMessageIdGenerator: java.lang.String projectId> 
(assert (not (= (ite var2125 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3884 String "") ; Statement: $r14 = "" 
 ; Statement: goto [?= $r7 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r14, r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001")] 
(assert true) ; Non Conditional
(define-const var320 String (str.++ "\u0001\u0001" var3884 var620)) ; Statement: $r7 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r14, r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001") 
(define-const var3757 Int (var1149_generateId/821242613 var3054 var320)) ; Statement: $l0 = staticinvoke <com.google.javascript.jscomp.GoogleJsMessageIdGenerator$MessageId: long generateId(java.lang.String,java.lang.String)>(r13, $r7) 
(define-const var2470 String (String_valueOf/-107395227 var3757)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l0) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var1379_checkState/1431124798=([boolean], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1855_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), projectId/-1074716720=([com.google.javascript.jscomp.GoogleJsMessageIdGenerator], java.lang.String), var687_isNullOrEmpty/1886904788=([java.lang.String], boolean), var1149_generateId/821242613=([java.lang.String, java.lang.String], long), String_valueOf/-107395227=([long], java.lang.String)}
; {var1297=com.google.javascript.jscomp.GoogleJsMessageIdGenerator, var371=r3, var620=r0, var242=null_type, var1855=java.util.List, var1788=r2, var3907=$z2, var1379=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1371=$r1, var1142=$r11, var3727=$z3, var3054=r13, var3928=$r4, var687=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var2125=$z0, var3884=$r14, var320=$r7, var1149=com.google.javascript.jscomp.GoogleJsMessageIdGenerator$MessageId, var3757=$l0, var2470=$r6}
; {com.google.javascript.jscomp.GoogleJsMessageIdGenerator=var1297, r3=var371, r0=var620, null_type=var242, java.util.List=var1855, r2=var1788, $z2=var3907, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1379, $r1=var1371, $r11=var1142, $z3=var3727, r13=var3054, $r4=var3928, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var687, $z0=var2125, $r14=var3884, $r7=var320, com.google.javascript.jscomp.GoogleJsMessageIdGenerator$MessageId=var1149, $l0=var3757, $r6=var2470}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.GoogleJsMessageIdGenerator;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.util.List;	if r0 == null goto $z2 = 0;	$z2 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2);	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r11 = interfaceinvoke r2.<java.util.List: java.util.Iterator iterator()>();	$z3 = interfaceinvoke $r11.<java.util.Iterator: boolean hasNext()>();	if $z3 == 0 goto r13 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	r13 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = r3.<com.google.javascript.jscomp.GoogleJsMessageIdGenerator: java.lang.String projectId>;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>($r4);	if $z0 == 0 goto $r5 = r3.<com.google.javascript.jscomp.GoogleJsMessageIdGenerator: java.lang.String projectId>;	$r14 = "";	goto [?= $r7 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r14, r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001")];	$r7 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r14, r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001");	$l0 = staticinvoke <com.google.javascript.jscomp.GoogleJsMessageIdGenerator$MessageId: long generateId(java.lang.String,java.lang.String)>(r13, $r7);	$r6 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l0);	return $r6
;block_num 7