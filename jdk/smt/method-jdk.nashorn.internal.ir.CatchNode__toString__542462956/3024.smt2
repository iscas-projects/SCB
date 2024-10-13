(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2008 0)
(declare-sort var3324 0)
(declare-sort var3429 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun exception/-409723775 (var2008) var3324)
(declare-fun toString/-866469929 (var3324 String Bool) void)
(declare-fun exceptionCondition/-409723775 (var2008) var3429)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var2008 var2008)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3429 var3429)
(declare-const var1331 var2008) ; Statement: r1 := @this: jdk.nashorn.internal.ir.CatchNode 
(assert (not (= var1331 null-var2008)))
(declare-const var1872 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1872 null-String)))
(declare-const var1144 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1144 null-Bool)))
(assert true)
;(assert (append/672562846 var1872 " catch (")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" catch (") 
(declare-const var1872!1 String)
(assert (= var1872!1 (str.++ var1872 " catch (")))
(define-const var3899 var3324 (exception/-409723775 var1331)) ; Statement: $r2 = r1.<jdk.nashorn.internal.ir.CatchNode: jdk.nashorn.internal.ir.IdentNode exception> 
(assert true)
;(assert (toString/-866469929 var3899 var1872!1 var1144)) ; Statement: virtualinvoke $r2.<jdk.nashorn.internal.ir.IdentNode: void toString(java.lang.StringBuilder,boolean)>(r0, z0) 

(declare-const var3899!1 var3324)
(declare-const var1872!2 String)
(declare-const var1144!1 Bool)
(define-const var3756 var3429 (exceptionCondition/-409723775 var1331)) ; Statement: $r3 = r1.<jdk.nashorn.internal.ir.CatchNode: jdk.nashorn.internal.ir.Expression exceptionCondition> 
 ; Statement: if $r3 == null goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (= var3756 null-var3429)) ; Cond: $r3 == null 
(assert true)
;(assert (append/-1166366385 var1872!2 41)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1872!3 String)
(assert (str.prefixof var1872!2 var1872!3))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), exception/-409723775=([jdk.nashorn.internal.ir.CatchNode], jdk.nashorn.internal.ir.IdentNode), toString/-866469929=([jdk.nashorn.internal.ir.IdentNode, java.lang.StringBuilder, boolean], void), exceptionCondition/-409723775=([jdk.nashorn.internal.ir.CatchNode], jdk.nashorn.internal.ir.Expression), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var2008=jdk.nashorn.internal.ir.CatchNode, var1331=r1, var1872=r0, var1144=z0, var3324=jdk.nashorn.internal.ir.IdentNode, var3899=$r2, var3429=jdk.nashorn.internal.ir.Expression, var3756=$r3}
; {jdk.nashorn.internal.ir.CatchNode=var2008, r1=var1331, r0=var1872, z0=var1144, jdk.nashorn.internal.ir.IdentNode=var3324, $r2=var3899, jdk.nashorn.internal.ir.Expression=var3429, $r3=var3756}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<jdk.nashorn.internal.ir.IdentNode: void toString(java.lang.StringBuilder,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.CatchNode;	r0 := @parameter0: java.lang.StringBuilder;	z0 := @parameter1: boolean;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" catch (");	$r2 = r1.<jdk.nashorn.internal.ir.CatchNode: jdk.nashorn.internal.ir.IdentNode exception>;	virtualinvoke $r2.<jdk.nashorn.internal.ir.IdentNode: void toString(java.lang.StringBuilder,boolean)>(r0, z0);	$r3 = r1.<jdk.nashorn.internal.ir.CatchNode: jdk.nashorn.internal.ir.Expression exceptionCondition>;	if $r3 == null goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	return
;block_num 2