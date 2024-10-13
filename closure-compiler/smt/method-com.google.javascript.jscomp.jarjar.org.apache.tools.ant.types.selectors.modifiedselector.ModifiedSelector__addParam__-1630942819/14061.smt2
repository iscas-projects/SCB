(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var999 0)
(declare-sort var1697 0)
(declare-sort var1856 0)
(declare-sort var1171 0)
(declare-sort var3358 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1171-init () var1171)
(declare-fun <init>/2111848790 (var1171) void)
(declare-fun setName/143461130 (var1171 String) void)
(declare-fun String_valueOf/-333372740 (var1856) String)
(declare-fun setValue/1344759518 (var1171 String) void)
(declare-fun configParameter/1926155840 (var999) var3358)
(declare-fun var3358_add/328494887 (var3358 var1856) Bool)
(declare-fun cast-from-var1171-to-var1856 (var1171) var1856)
(declare-const null-var999 var999)
(declare-const null-String String)
(declare-const null-var1856 var1856)
(declare-const var2853 var999) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector 
(assert (not (= var2853 null-var999)))
(declare-const var3834 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3834 null-String)))
(declare-const var2611 var1856) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var2611 null-var1856)))
(define-const var657 var1171 var1171-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Parameter 
(assert true)
;(assert (<init>/2111848790 var657)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Parameter: void <init>()>() 

(declare-const var657!1 var1171)
(assert true)
;(assert (setName/143461130 var657!1 var3834)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Parameter: void setName(java.lang.String)>(r1) 

(declare-const var657!2 var1171)
(declare-const var3834!1 String)
(define-const var152 String (String_valueOf/-333372740 var2611)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2) 
(assert true)
;(assert (setValue/1344759518 var657!2 var152)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Parameter: void setValue(java.lang.String)>($r3) 

(declare-const var657!3 var1171)
(declare-const var152!1 String)
(define-const var1993 var3358 (configParameter/1926155840 var2853)) ; Statement: $r5 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector: java.util.List configParameter> 
;(assert (var3358_add/328494887 var1993 (cast-from-var1171-to-var1856 var657!3))) ; Statement: interfaceinvoke $r5.<java.util.List: boolean add(java.lang.Object)>($r0) 

(declare-const var1993!1 var3358)
(declare-const var657!4 var1171)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1171-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Parameter), <init>/2111848790=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Parameter], void), setName/143461130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Parameter, java.lang.String], void), String_valueOf/-333372740=([java.lang.Object], java.lang.String), setValue/1344759518=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Parameter, java.lang.String], void), configParameter/1926155840=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector], java.util.List), var3358_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var1171-to-var1856=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Parameter], java.lang.Object)}
; {var999=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector, var2853=r4, var3834=r1, var1697=null_type, var1856=java.lang.Object, var2611=r2, var1171=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Parameter, var657=$r0, var152=$r3, var3358=java.util.List, var1993=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector=var999, r4=var2853, r1=var3834, null_type=var1697, java.lang.Object=var1856, r2=var2611, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Parameter=var1171, $r0=var657, $r3=var152, java.util.List=var3358, $r5=var1993}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Parameter;	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Parameter: void <init>()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Parameter: void setName(java.lang.String)>(r1);	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2);	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Parameter: void setValue(java.lang.String)>($r3);	$r5 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector: java.util.List configParameter>;	interfaceinvoke $r5.<java.util.List: boolean add(java.lang.Object)>($r0);	return
;block_num 1