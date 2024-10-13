(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var941 0)
(declare-sort var1235 0)
(declare-sort var2982 0)
(declare-sort var3132 0)
(declare-sort var2920 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var3132-init () var3132)
(declare-fun <init>/1019581978 (var3132 String Bool var2920) void)
(declare-const null-var941 var941)
(declare-const null-String String)
(declare-const null-var2982 var2982)
(declare-const null-NullType var1235)
(declare-const null-var2920 var2920)
(declare-const var1805 var941) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable 
(assert (not (= var1805 null-var941)))
(declare-const var3100 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3100 null-String)))
(declare-const var1802 var2982) ; Statement: r4 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper 
(assert (not (= var1802 null-var2982)))
(assert true)
(define-const var2960 Bool (contains/1009244746 var3100 (cast-from-String-to-String ":"))) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>(":") 
 ; Statement: if $z0 != 0 goto r2 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.lang.String attrToComponent(java.lang.String)>(r0) 
(assert (not (not (= (ite var2960 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3405 var3132 var3132-init) ; Statement: $r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable$AttributeComponentInformation 
(assert true)
;(assert (<init>/1019581978 var3405 null-String (ite (= 1 0) true false) null-var2920)) ; Statement: specialinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable$AttributeComponentInformation: void <init>(java.lang.String,boolean,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable$1)>(null, 0, null) 

(declare-const var3405!1 var3132)
(declare-const var951 var1235)
(declare-const var1357 Int)
(declare-const var951!1 var1235)
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var3132-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable$AttributeComponentInformation), <init>/1019581978=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable$AttributeComponentInformation, java.lang.String, boolean, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable$1], void)}
; {var941=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable, var1805=r1, var3100=r0, var1235=null_type, var2982=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper, var1802=r4, var2960=$z0, var3132=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable$AttributeComponentInformation, var3405=$r9, var2920=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable$1, var951=null, var1357=0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable=var941, r1=var1805, r0=var3100, null_type=var1235, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper=var2982, r4=var1802, $z0=var2960, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable$AttributeComponentInformation=var3132, $r9=var3405, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable$1=var2920, null=var951, 0=var1357}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable;	r0 := @parameter0: java.lang.String;	r4 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper;	$z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>(":");	if $z0 != 0 goto r2 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.lang.String attrToComponent(java.lang.String)>(r0);	$r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable$AttributeComponentInformation;	specialinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable$AttributeComponentInformation: void <init>(java.lang.String,boolean,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable$1)>(null, 0, null);	return $r9
;block_num 2