(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3284 0)
(declare-sort var1596 0)
(declare-sort var1611 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun indexOf/1795197748 ((s String) (subs String) (fromIndex Int)) Int (str.indexof s subs fromIndex))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-var1596 var1596)
(declare-const var1611-DELIM_START String)
(declare-const var1673 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1673 null-String)))
(declare-const var2426 var1596) ; Statement: r5 := @parameter1: java.util.Properties 
(assert (not (= var2426 null-var1596)))
(define-const var1080 String String-init) ; Statement: $r18 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1080)) ; Statement: specialinvoke $r18.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1080!1 String)
(define-const var2271 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(define-const var2176 String var1611-DELIM_START) ; Statement: $r2 = <org.apache.log4j.helpers.OptionConverter: java.lang.String DELIM_START> 
(assert true)
(define-const var2624 Int (indexOf/1795197748 var1673 var2176 var2271)) ; Statement: $i4 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String,int)>($r2, i6) 
(define-const var1265 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if $i4 != $i9 goto $r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i6, $i4) 
(assert (not (not (= var2624 var1265)))) ; Negate: Cond: $i4 != $i9  
 ; Statement: if i6 != 0 goto $i5 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (not (= var2271 0)))) ; Negate: Cond: i6 != 0  
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), indexOf/1795197748=([java.lang.String, java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var1673=r1, var3284=null_type, var1596=java.util.Properties, var2426=r5, var1080=$r18, var2271=i6, var1611=org.apache.log4j.helpers.OptionConverter, var2176=$r2, var2624=$i4, var1265=$i9}
; {r1=var1673, null_type=var3284, java.util.Properties=var1596, r5=var2426, $r18=var1080, i6=var2271, org.apache.log4j.helpers.OptionConverter=var1611, $r2=var2176, $i4=var2624, $i9=var1265}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.String: int indexOf(java.lang.String,int)>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.String: int indexOf(java.lang.String,int)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r5 := @parameter1: java.util.Properties;	$r18 = new java.lang.StringBuffer;	specialinvoke $r18.<java.lang.StringBuffer: void <init>()>();	i6 = 0;	$r2 = <org.apache.log4j.helpers.OptionConverter: java.lang.String DELIM_START>;	$i4 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String,int)>($r2, i6);	$i9 = (int) -1;	if $i4 != $i9 goto $r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i6, $i4);	if i6 != 0 goto $i5 = virtualinvoke r1.<java.lang.String: int length()>();	return r1
;block_num 4