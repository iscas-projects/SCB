(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1790 0)
(declare-sort var3726 0)
(declare-sort var3518 0)
(declare-sort var3524 0)
(declare-sort var1109 0)
(declare-sort var1613 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-29599980 (var1790) var3726)
(declare-fun var3726_access$000/1069453081 (var3726) var3524)
(declare-fun <init>/-1794206805 (var3518 var3524 var1109) void)
(declare-fun cast-from-var1790-to-var3518 (var1790) var3518)
(declare-fun delegate/-29599980 (var1790) var3518)
(declare-fun prefixApplied/-29599980 (var1790) Bool)
(declare-fun suffixApplied/-29599980 (var1790) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun sqlBuffer/-29599980 (var1790) String)
(declare-const null-var1790 var1790)
(declare-const null-var3726 var3726)
(declare-const null-var3518 var3518)
(declare-const null-NullType var1613)
(declare-const null-var1109 var1109)
(declare-const var738 var1790) ; Statement: r0 := @this: org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext 
(assert (not (= var738 null-var1790)))
(declare-const var463 var3726) ; Statement: r1 := @parameter0: org.apache.ibatis.scripting.xmltags.TrimSqlNode 
(assert (not (= var463 null-var3726)))
(declare-const var2271 var3518) ; Statement: r3 := @parameter1: org.apache.ibatis.scripting.xmltags.DynamicContext 
(assert (not (= var2271 null-var3518)))
(declare-const var738!1 var1790)
(assert (not (= var738!1 null-var1790)))
(assert (= (this$0/-29599980 var738!1) var463)) ; Statement: r0.<org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext: org.apache.ibatis.scripting.xmltags.TrimSqlNode this$0> = r1 
(define-const var3129 var3524 (var3726_access$000/1069453081 var463)) ; Statement: $r2 = staticinvoke <org.apache.ibatis.scripting.xmltags.TrimSqlNode: org.apache.ibatis.session.Configuration access$000(org.apache.ibatis.scripting.xmltags.TrimSqlNode)>(r1) 
(assert true)
;(assert (<init>/-1794206805 (cast-from-var1790-to-var3518 var738!1) var3129 null-var1109)) ; Statement: specialinvoke r0.<org.apache.ibatis.scripting.xmltags.DynamicContext: void <init>(org.apache.ibatis.session.Configuration,java.lang.Object)>($r2, null) 

(declare-const var738!2 var1790)
(declare-const var3129!1 var3524)
(declare-const var78 var1613)
(declare-const var738!3 var1790)
(assert (not (= var738!3 null-var1790)))
(assert (= (delegate/-29599980 var738!3) var2271)) ; Statement: r0.<org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext: org.apache.ibatis.scripting.xmltags.DynamicContext delegate> = r3 
(declare-const var738!4 var1790)
(assert (not (= var738!4 null-var1790)))
(assert (= (prefixApplied/-29599980 var738!4) (ite (= 1 0) true false))) ; Statement: r0.<org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext: boolean prefixApplied> = 0 
(declare-const var738!5 var1790)
(assert (not (= var738!5 null-var1790)))
(assert (= (suffixApplied/-29599980 var738!5) (ite (= 1 0) true false))) ; Statement: r0.<org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext: boolean suffixApplied> = 0 
(define-const var3538 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3538)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3538!1 String)
(assert (= var3538!1 ""))
(declare-const var738!6 var1790)
(assert (not (= var738!6 null-var1790)))
(assert (= (sqlBuffer/-29599980 var738!6) var3538!1)) ; Statement: r0.<org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext: java.lang.StringBuilder sqlBuffer> = $r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-29599980=([org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext], org.apache.ibatis.scripting.xmltags.TrimSqlNode), var3726_access$000/1069453081=([org.apache.ibatis.scripting.xmltags.TrimSqlNode], org.apache.ibatis.session.Configuration), <init>/-1794206805=([org.apache.ibatis.scripting.xmltags.DynamicContext, org.apache.ibatis.session.Configuration, java.lang.Object], void), cast-from-var1790-to-var3518=([org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext], org.apache.ibatis.scripting.xmltags.DynamicContext), delegate/-29599980=([org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext], org.apache.ibatis.scripting.xmltags.DynamicContext), prefixApplied/-29599980=([org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext], boolean), suffixApplied/-29599980=([org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), sqlBuffer/-29599980=([org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext], java.lang.StringBuilder)}
; {var1790=org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext, var738=r0, var3726=org.apache.ibatis.scripting.xmltags.TrimSqlNode, var463=r1, var3518=org.apache.ibatis.scripting.xmltags.DynamicContext, var2271=r3, var3524=org.apache.ibatis.session.Configuration, var3129=$r2, var1109=java.lang.Object, var78=null, var1613=null_type, var3538=$r4}
; {org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext=var1790, r0=var738, org.apache.ibatis.scripting.xmltags.TrimSqlNode=var3726, r1=var463, org.apache.ibatis.scripting.xmltags.DynamicContext=var3518, r3=var2271, org.apache.ibatis.session.Configuration=var3524, $r2=var3129, java.lang.Object=var1109, null=var78, null_type=var1613, $r4=var3538}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext;	r1 := @parameter0: org.apache.ibatis.scripting.xmltags.TrimSqlNode;	r3 := @parameter1: org.apache.ibatis.scripting.xmltags.DynamicContext;	r0.<org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext: org.apache.ibatis.scripting.xmltags.TrimSqlNode this$0> = r1;	$r2 = staticinvoke <org.apache.ibatis.scripting.xmltags.TrimSqlNode: org.apache.ibatis.session.Configuration access$000(org.apache.ibatis.scripting.xmltags.TrimSqlNode)>(r1);	specialinvoke r0.<org.apache.ibatis.scripting.xmltags.DynamicContext: void <init>(org.apache.ibatis.session.Configuration,java.lang.Object)>($r2, null);	r0.<org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext: org.apache.ibatis.scripting.xmltags.DynamicContext delegate> = r3;	r0.<org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext: boolean prefixApplied> = 0;	r0.<org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext: boolean suffixApplied> = 0;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	r0.<org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext: java.lang.StringBuilder sqlBuffer> = $r4;	return
;block_num 1