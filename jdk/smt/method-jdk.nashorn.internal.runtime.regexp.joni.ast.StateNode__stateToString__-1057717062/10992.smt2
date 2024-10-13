(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3937 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun isMinFixed/-340952808 (var3937) Bool)
(declare-fun isMaxFixed/336479786 (var3937) Bool)
(declare-fun isMark1/-28329540 (var3937) Bool)
(declare-fun isMark2/-28299749 (var3937) Bool)
(declare-fun isMemBackrefed/-555680572 (var3937) Bool)
(declare-fun isStopBtSimpleRepeat/2017909945 (var3937) Bool)
(declare-fun isRecursion/-1136051426 (var3937) Bool)
(declare-fun isCalled/-935156931 (var3937) Bool)
(declare-fun isAddrFixed/157934813 (var3937) Bool)
(declare-fun isInRepeat/201367930 (var3937) Bool)
(declare-fun isNestLevel/326274612 (var3937) Bool)
(declare-fun isByNumber/38725146 (var3937) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3937 var3937)
(declare-const var1315 var3937) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode 
(assert (not (= var1315 null-var3937)))
(define-const var1758 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1758)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1758!1 String)
(assert (= var1758!1 ""))
(assert true)
(define-const var65 Bool (isMinFixed/-340952808 var1315)) ; Statement: $z0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isMinFixed()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isMaxFixed()>() 
(assert (= (ite var65 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3328 Bool (isMaxFixed/336479786 var1315)) ; Statement: $z1 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isMaxFixed()>() 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isMark1()>() 
(assert (= (ite var3328 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var3213 Bool (isMark1/-28329540 var1315)) ; Statement: $z2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isMark1()>() 
 ; Statement: if $z2 == 0 goto $z3 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isMark2()>() 
(assert (= (ite var3213 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var3989 Bool (isMark2/-28299749 var1315)) ; Statement: $z3 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isMark2()>() 
 ; Statement: if $z3 == 0 goto $z4 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isMemBackrefed()>() 
(assert (= (ite var3989 1 0) 0)) ; Cond: $z3 == 0 
(assert true)
(define-const var1155 Bool (isMemBackrefed/-555680572 var1315)) ; Statement: $z4 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isMemBackrefed()>() 
 ; Statement: if $z4 == 0 goto $z5 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isStopBtSimpleRepeat()>() 
(assert (= (ite var1155 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
(define-const var3340 Bool (isStopBtSimpleRepeat/2017909945 var1315)) ; Statement: $z5 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isStopBtSimpleRepeat()>() 
 ; Statement: if $z5 == 0 goto $z6 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isRecursion()>() 
(assert (= (ite var3340 1 0) 0)) ; Cond: $z5 == 0 
(assert true)
(define-const var467 Bool (isRecursion/-1136051426 var1315)) ; Statement: $z6 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isRecursion()>() 
 ; Statement: if $z6 == 0 goto $z7 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isCalled()>() 
(assert (= (ite var467 1 0) 0)) ; Cond: $z6 == 0 
(assert true)
(define-const var296 Bool (isCalled/-935156931 var1315)) ; Statement: $z7 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isCalled()>() 
 ; Statement: if $z7 == 0 goto $z8 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isAddrFixed()>() 
(assert (= (ite var296 1 0) 0)) ; Cond: $z7 == 0 
(assert true)
(define-const var3342 Bool (isAddrFixed/157934813 var1315)) ; Statement: $z8 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isAddrFixed()>() 
 ; Statement: if $z8 == 0 goto $z9 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isInRepeat()>() 
(assert (= (ite var3342 1 0) 0)) ; Cond: $z8 == 0 
(assert true)
(define-const var2074 Bool (isInRepeat/201367930 var1315)) ; Statement: $z9 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isInRepeat()>() 
 ; Statement: if $z9 == 0 goto $z10 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isNestLevel()>() 
(assert (= (ite var2074 1 0) 0)) ; Cond: $z9 == 0 
(assert true)
(define-const var2846 Bool (isNestLevel/326274612 var1315)) ; Statement: $z10 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isNestLevel()>() 
 ; Statement: if $z10 == 0 goto $z11 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isByNumber()>() 
(assert (= (ite var2846 1 0) 0)) ; Cond: $z10 == 0 
(assert true)
(define-const var2798 Bool (isByNumber/38725146 var1315)) ; Statement: $z11 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isByNumber()>() 
 ; Statement: if $z11 == 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2798 1 0) 0)) ; Cond: $z11 == 0 
(assert true)
(define-const var2648 String (toString/-2075883882 var1758!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), isMinFixed/-340952808=([jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode], boolean), isMaxFixed/336479786=([jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode], boolean), isMark1/-28329540=([jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode], boolean), isMark2/-28299749=([jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode], boolean), isMemBackrefed/-555680572=([jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode], boolean), isStopBtSimpleRepeat/2017909945=([jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode], boolean), isRecursion/-1136051426=([jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode], boolean), isCalled/-935156931=([jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode], boolean), isAddrFixed/157934813=([jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode], boolean), isInRepeat/201367930=([jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode], boolean), isNestLevel/326274612=([jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode], boolean), isByNumber/38725146=([jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3937=jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode, var1315=r1, var1758=$r0, var65=$z0, var3328=$z1, var3213=$z2, var3989=$z3, var1155=$z4, var3340=$z5, var467=$z6, var296=$z7, var3342=$z8, var2074=$z9, var2846=$z10, var2798=$z11, var2648=$r2}
; {jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode=var3937, r1=var1315, $r0=var1758, $z0=var65, $z1=var3328, $z2=var3213, $z3=var3989, $z4=var1155, $z5=var3340, $z6=var467, $z7=var296, $z8=var3342, $z9=var2074, $z10=var2846, $z11=var2798, $r2=var2648}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isMinFixed()>();	if $z0 == 0 goto $z1 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isMaxFixed()>();	$z1 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isMaxFixed()>();	if $z1 == 0 goto $z2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isMark1()>();	$z2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isMark1()>();	if $z2 == 0 goto $z3 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isMark2()>();	$z3 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isMark2()>();	if $z3 == 0 goto $z4 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isMemBackrefed()>();	$z4 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isMemBackrefed()>();	if $z4 == 0 goto $z5 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isStopBtSimpleRepeat()>();	$z5 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isStopBtSimpleRepeat()>();	if $z5 == 0 goto $z6 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isRecursion()>();	$z6 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isRecursion()>();	if $z6 == 0 goto $z7 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isCalled()>();	$z7 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isCalled()>();	if $z7 == 0 goto $z8 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isAddrFixed()>();	$z8 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isAddrFixed()>();	if $z8 == 0 goto $z9 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isInRepeat()>();	$z9 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isInRepeat()>();	if $z9 == 0 goto $z10 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isNestLevel()>();	$z10 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isNestLevel()>();	if $z10 == 0 goto $z11 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isByNumber()>();	$z11 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: boolean isByNumber()>();	if $z11 == 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 13