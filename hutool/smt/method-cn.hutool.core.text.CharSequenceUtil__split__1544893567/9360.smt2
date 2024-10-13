(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1266 0)
(declare-sort var3656 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun var3656_split/718457072 (String String Int Bool Bool) var1266)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var2911 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var2911 null-String)))
(declare-const var3968 String) ; Statement: r0 := @parameter1: java.lang.CharSequence 
(assert (not (= var3968 null-String)))
(declare-const var986 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var986 null-Int)))
(declare-const var3027 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var3027 null-Bool)))
(declare-const var945 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var945 null-Bool)))
 ; Statement: if null != r0 goto $r3 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert (not (= null-String var3968))) ; Cond: null != r0 
(define-const var3440 String (String_toString/-1426662429 var3968)) ; Statement: $r3 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var276 var1266 (var3656_split/718457072 var2911 var3440 var986 var3027 var945)) ; Statement: $r2 = staticinvoke <cn.hutool.core.text.StrSplitter: java.util.List split(java.lang.CharSequence,java.lang.String,int,boolean,boolean)>(r1, $r3, i0, z0, z1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), var3656_split/718457072=([java.lang.CharSequence, java.lang.String, int, boolean, boolean], java.util.List)}
; {var2911=r1, var3968=r0, var986=i0, var3027=z0, var945=z1, var3440=$r3, var1266=java.util.List, var3656=cn.hutool.core.text.StrSplitter, var276=$r2}
; {r1=var2911, r0=var3968, i0=var986, z0=var3027, z1=var945, $r3=var3440, java.util.List=var1266, cn.hutool.core.text.StrSplitter=var3656, $r2=var276}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.CharSequence;	r0 := @parameter1: java.lang.CharSequence;	i0 := @parameter2: int;	z0 := @parameter3: boolean;	z1 := @parameter4: boolean;	if null != r0 goto $r3 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$r3 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$r2 = staticinvoke <cn.hutool.core.text.StrSplitter: java.util.List split(java.lang.CharSequence,java.lang.String,int,boolean,boolean)>(r1, $r3, i0, z0, z1);	return $r2
;block_num 3