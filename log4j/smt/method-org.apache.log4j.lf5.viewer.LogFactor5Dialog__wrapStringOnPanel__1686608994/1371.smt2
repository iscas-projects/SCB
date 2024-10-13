(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2528 0)
(declare-sort var3513 0)
(declare-sort var3828 0)
(declare-sort var3598 0)
(declare-sort var101 0)
(declare-sort var3644 0)
(declare-sort var919 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDefaultConstraints/-1650816691 (var2528) var3598)
(declare-fun gridwidth/-1308852144 (var3598) Int)
(declare-fun var101-init () var101)
(declare-fun <init>/988548359 (var101 Int Int Int Int) void)
(declare-fun insets/-1308852144 (var3598) var101)
(declare-fun getLayout/1330176847 (var3828) var3644)
(declare-fun cast-from-var3644-to-var919 (var3644) var919)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2528 var2528)
(declare-const null-String String)
(declare-const null-var3828 var3828)
(declare-const null-var3598 var3598)
(declare-const var3842 var2528) ; Statement: r0 := @this: org.apache.log4j.lf5.viewer.LogFactor5Dialog 
(assert (not (= var3842 null-var2528)))
(declare-const var1524 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var1524 null-String)))
(declare-const var3263 var3828) ; Statement: r3 := @parameter1: java.awt.Container 
(assert (not (= var3263 null-var3828)))
(assert true)
(define-const var1569 var3598 (getDefaultConstraints/-1650816691 var3842)) ; Statement: r1 = virtualinvoke r0.<org.apache.log4j.lf5.viewer.LogFactor5Dialog: java.awt.GridBagConstraints getDefaultConstraints()>() 
(declare-const var1569!1 var3598)
(assert (not (= var1569!1 null-var3598)))
(assert (= (gridwidth/-1308852144 var1569!1) 0)) ; Statement: r1.<java.awt.GridBagConstraints: int gridwidth> = 0 
(define-const var2349 var101 var101-init) ; Statement: $r2 = new java.awt.Insets 
(assert true)
;(assert (<init>/988548359 var2349 0 0 0 0)) ; Statement: specialinvoke $r2.<java.awt.Insets: void <init>(int,int,int,int)>(0, 0, 0, 0) 

(declare-const var2349!1 var101)
(declare-const var2106 Int)
(declare-const var2106!1 Int)
(declare-const var2106!2 Int)
(declare-const var2106!3 Int)
(declare-const var1569!2 var3598)
(assert (not (= var1569!2 null-var3598)))
(assert (= (insets/-1308852144 var1569!2) var2349!1)) ; Statement: r1.<java.awt.GridBagConstraints: java.awt.Insets insets> = $r2 
(assert true)
(define-const var3582 var3644 (getLayout/1330176847 var3263)) ; Statement: $r4 = virtualinvoke r3.<java.awt.Container: java.awt.LayoutManager getLayout()>() 
(define-const var2680 var919 (cast-from-var3644-to-var919 var3582)) ; Statement: r5 = (java.awt.GridBagLayout) $r4 
(assert true) ; Non Conditional
(assert true)
(define-const var1854 Int (length/-134980193 var1524)) ; Statement: $i0 = virtualinvoke r8.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto return 
(assert (<= var1854 0)) ; Cond: $i0 <= 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getDefaultConstraints/-1650816691=([org.apache.log4j.lf5.viewer.LogFactor5Dialog], java.awt.GridBagConstraints), gridwidth/-1308852144=([java.awt.GridBagConstraints], int), var101-init=([], java.awt.Insets), <init>/988548359=([java.awt.Insets, int, int, int, int], void), insets/-1308852144=([java.awt.GridBagConstraints], java.awt.Insets), getLayout/1330176847=([java.awt.Container], java.awt.LayoutManager), cast-from-var3644-to-var919=([java.awt.LayoutManager], java.awt.GridBagLayout), length/-134980193=([java.lang.String], int)}
; {var2528=org.apache.log4j.lf5.viewer.LogFactor5Dialog, var3842=r0, var1524=r8, var3513=null_type, var3828=java.awt.Container, var3263=r3, var3598=java.awt.GridBagConstraints, var1569=r1, var101=java.awt.Insets, var2349=$r2, var2106=0, var3644=java.awt.LayoutManager, var3582=$r4, var919=java.awt.GridBagLayout, var2680=r5, var1854=$i0}
; {org.apache.log4j.lf5.viewer.LogFactor5Dialog=var2528, r0=var3842, r8=var1524, null_type=var3513, java.awt.Container=var3828, r3=var3263, java.awt.GridBagConstraints=var3598, r1=var1569, java.awt.Insets=var101, $r2=var2349, 0=var2106, java.awt.LayoutManager=var3644, $r4=var3582, java.awt.GridBagLayout=var919, r5=var2680, $i0=var1854}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.log4j.lf5.viewer.LogFactor5Dialog;	r8 := @parameter0: java.lang.String;	r3 := @parameter1: java.awt.Container;	r1 = virtualinvoke r0.<org.apache.log4j.lf5.viewer.LogFactor5Dialog: java.awt.GridBagConstraints getDefaultConstraints()>();	r1.<java.awt.GridBagConstraints: int gridwidth> = 0;	$r2 = new java.awt.Insets;	specialinvoke $r2.<java.awt.Insets: void <init>(int,int,int,int)>(0, 0, 0, 0);	r1.<java.awt.GridBagConstraints: java.awt.Insets insets> = $r2;	$r4 = virtualinvoke r3.<java.awt.Container: java.awt.LayoutManager getLayout()>();	r5 = (java.awt.GridBagLayout) $r4;	$i0 = virtualinvoke r8.<java.lang.String: int length()>();	if $i0 <= 0 goto return;	return
;block_num 3