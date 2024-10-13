(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2218 0)
(declare-sort var3585 0)
(declare-sort var787 0)
(declare-sort var3325 0)
(declare-sort var1344 0)
(declare-sort var1836 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3585_checkArgument/-972017905 (Bool var787) void)
(declare-fun cast-from-String-to-var787 (String) var787)
(declare-fun var3325-init () var3325)
(declare-fun var1344-init () var1344)
(declare-fun <init>/-1507991564 (var1344 String) void)
(declare-fun <init>/1535172608 (var3325 var1836) void)
(declare-fun cast-from-var1344-to-var1836 (var1344) var1836)
(declare-const null-String String)
(declare-const var2906 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2906 null-String)))
(assert true)
(define-const var3675 Int (length/-134980193 var2906)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 0 goto $z0 = 0 
(assert (= var3675 0)) ; Cond: $i0 == 0 
(define-const var837 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
;(assert (var3585_checkArgument/-972017905 var837 (cast-from-String-to-var787 "The separator may not be the empty string."))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z0, "The separator may not be the empty string.") 

(declare-const var837!1 Bool)
(declare-const var3742 String)
(assert true)
(define-const var2518 Int (length/-134980193 var2906)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i1 != 1 goto $r1 = new com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter 
(assert (not (= var2518 1))) ; Cond: $i1 != 1 
(define-const var673 var3325 var3325-init) ; Statement: $r1 = new com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter 
(define-const var2061 var1344 var1344-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2 
(assert true)
;(assert (<init>/-1507991564 var2061 var2906)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2: void <init>(java.lang.String)>(r0) 

(declare-const var2061!1 var1344)
(declare-const var2906!1 String)
(assert true)
;(assert (<init>/1535172608 var673 (cast-from-var1344-to-var1836 var2061!1))) ; Statement: specialinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: void <init>(com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$Strategy)>($r2) 

(declare-const var673!1 var3325)
(declare-const var2061!2 var1344)
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var3585_checkArgument/-972017905=([boolean, java.lang.Object], void), cast-from-String-to-var787=([java.lang.String], java.lang.Object), var3325-init=([], com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter), var1344-init=([], com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2), <init>/-1507991564=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2, java.lang.String], void), <init>/1535172608=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$Strategy], void), cast-from-var1344-to-var1836=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2], com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$Strategy)}
; {var2906=r0, var2218=null_type, var3675=$i0, var837=$z0, var3585=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var787=java.lang.Object, var3742="The separator may not be the empty string.", var2518=$i1, var3325=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, var673=$r1, var1344=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2, var2061=$r2, var1836=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$Strategy}
; {r0=var2906, null_type=var2218, $i0=var3675, $z0=var837, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3585, java.lang.Object=var787, "The separator may not be the empty string."=var3742, $i1=var2518, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter=var3325, $r1=var673, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2=var1344, $r2=var2061, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$Strategy=var1836}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 0 goto $z0 = 0;	$z0 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z0, "The separator may not be the empty string.");	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if $i1 != 1 goto $r1 = new com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter;	$r1 = new com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter;	$r2 = new com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2;	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2: void <init>(java.lang.String)>(r0);	specialinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: void <init>(com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$Strategy)>($r2);	return $r1
;block_num 4