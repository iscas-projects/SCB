(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1693 0)
(declare-sort var1171 0)
(declare-sort var3512 0)
(declare-sort var841 0)
(declare-sort var3104 0)
(declare-sort var2891 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nameGenerator/1685743079 (var1693) var3512)
(declare-fun reservedNames/1685743079 (var1693) var841)
(declare-fun prefix/1685743079 (var1693) String)
(declare-fun reservedCharacters/1685743079 (var1693) (Array Int Int))
(declare-fun var3512_reset/1325852242 (var3512 var841 String (Array Int Int)) void)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var3512_clone/-677485353 (var3512 var841 String (Array Int Int)) var3512)
(declare-fun var3104-init () var3104)
(declare-fun <init>/-325640736 (var3104) void)
(declare-fun var841_iterator/1911472585 (var841) Iterator)
(declare-fun cast-from-var1171-to-var841 (var1171) var841)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var2891_size/-959786421 (var2891) Int)
(declare-fun cast-from-var3104-to-var2891 (var3104) var2891)
(declare-const null-var1693 var1693)
(declare-const null-var1171 var1171)
(declare-const var3301 var1693) ; Statement: r0 := @this: com.google.javascript.jscomp.RenameVars 
(assert (not (= var3301 null-var1693)))
(declare-const var1409 var1171) ; Statement: r13 := @parameter0: java.util.SortedSet 
(assert (not (= var1409 null-var1171)))
(define-const var905 var3512 (nameGenerator/1685743079 var3301)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.RenameVars: com.google.javascript.jscomp.NameGenerator nameGenerator> 
(define-const var278 var841 (reservedNames/1685743079 var3301)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.RenameVars: java.util.Set reservedNames> 
(define-const var1405 String (prefix/1685743079 var3301)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.RenameVars: java.lang.String prefix> 
(define-const var3650 (Array Int Int) (reservedCharacters/1685743079 var3301)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.RenameVars: char[] reservedCharacters> 
;(assert (var3512_reset/1325852242 var905 var278 var1405 var3650)) ; Statement: interfaceinvoke $r4.<com.google.javascript.jscomp.NameGenerator: void reset(java.util.Set,java.lang.String,char[])>($r3, $r2, $r1) 

(declare-const var905!1 var3512)
(declare-const var278!1 var841)
(declare-const var1405!1 String)
(declare-const var3650!1 (Array Int Int))
(define-const var1177 var3512 (nameGenerator/1685743079 var3301)) ; Statement: r5 = r0.<com.google.javascript.jscomp.RenameVars: com.google.javascript.jscomp.NameGenerator nameGenerator> 
(define-const var3979 String (prefix/1685743079 var3301)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.RenameVars: java.lang.String prefix> 
(assert true)
(define-const var1410 Bool (isEmpty/-1285796103 var3979)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r9 = r0.<com.google.javascript.jscomp.RenameVars: com.google.javascript.jscomp.NameGenerator nameGenerator> 
(assert (= (ite var1410 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1110 var3512 (nameGenerator/1685743079 var3301)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.RenameVars: com.google.javascript.jscomp.NameGenerator nameGenerator> 
(define-const var731 var841 (reservedNames/1685743079 var3301)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.RenameVars: java.util.Set reservedNames> 
(define-const var3601 (Array Int Int) (reservedCharacters/1685743079 var3301)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.RenameVars: char[] reservedCharacters> 
(define-const var1012 var3512 (var3512_clone/-677485353 var1110 var731 "" var3601)) ; Statement: $r33 = interfaceinvoke $r9.<com.google.javascript.jscomp.NameGenerator: com.google.javascript.jscomp.NameGenerator clone(java.util.Set,java.lang.String,char[])>($r8, "", $r7) 
(assert true) ; Non Conditional
(define-const var225 var3512 var1012) ; Statement: r10 = $r33 
(define-const var3308 var3104 var3104-init) ; Statement: $r11 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3308)) ; Statement: specialinvoke $r11.<java.util.ArrayList: void <init>()>() 

(declare-const var3308!1 var3104)
(define-const var689 var3104 var3104-init) ; Statement: $r12 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var689)) ; Statement: specialinvoke $r12.<java.util.ArrayList: void <init>()>() 

(declare-const var689!1 var3104)
(define-const var1078 Iterator (var841_iterator/1911472585 (cast-from-var1171-to-var841 var1409))) ; Statement: $r32 = interfaceinvoke r13.<java.util.SortedSet: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3937 Bool (Iterator_hasNext/-1669924200 var1078)) ; Statement: $z3 = interfaceinvoke $r32.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z3 == 0 goto i2 = interfaceinvoke $r12.<java.util.List: int size()>() 
(assert (= (ite var3937 1 0) 0)) ; Cond: $z3 == 0 
(define-const var3600 Int (var2891_size/-959786421 (cast-from-var3104-to-var2891 var689!1))) ; Statement: i2 = interfaceinvoke $r12.<java.util.List: int size()>() 
(define-const var3111 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i2 goto return 
(assert (>= var3111 var3600)) ; Cond: i3 >= i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {nameGenerator/1685743079=([com.google.javascript.jscomp.RenameVars], com.google.javascript.jscomp.NameGenerator), reservedNames/1685743079=([com.google.javascript.jscomp.RenameVars], java.util.Set), prefix/1685743079=([com.google.javascript.jscomp.RenameVars], java.lang.String), reservedCharacters/1685743079=([com.google.javascript.jscomp.RenameVars], char[]), var3512_reset/1325852242=([com.google.javascript.jscomp.NameGenerator, java.util.Set, java.lang.String, char[]], void), isEmpty/-1285796103=([java.lang.String], boolean), var3512_clone/-677485353=([com.google.javascript.jscomp.NameGenerator, java.util.Set, java.lang.String, char[]], com.google.javascript.jscomp.NameGenerator), var3104-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), var841_iterator/1911472585=([java.util.Set], java.util.Iterator), cast-from-var1171-to-var841=([java.util.SortedSet], java.util.Set), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var2891_size/-959786421=([java.util.List], int), cast-from-var3104-to-var2891=([java.util.ArrayList], java.util.List)}
; {var1693=com.google.javascript.jscomp.RenameVars, var3301=r0, var1171=java.util.SortedSet, var1409=r13, var3512=com.google.javascript.jscomp.NameGenerator, var905=$r4, var841=java.util.Set, var278=$r3, var1405=$r2, var3650=$r1, var1177=r5, var3979=$r6, var1410=$z0, var1110=$r9, var731=$r8, var3601=$r7, var1012=$r33, var225=r10, var3104=java.util.ArrayList, var3308=$r11, var689=$r12, var1078=$r32, var3937=$z3, var2891=java.util.List, var3600=i2, var3111=i3}
; {com.google.javascript.jscomp.RenameVars=var1693, r0=var3301, java.util.SortedSet=var1171, r13=var1409, com.google.javascript.jscomp.NameGenerator=var3512, $r4=var905, java.util.Set=var841, $r3=var278, $r2=var1405, $r1=var3650, r5=var1177, $r6=var3979, $z0=var1410, $r9=var1110, $r8=var731, $r7=var3601, $r33=var1012, r10=var225, java.util.ArrayList=var3104, $r11=var3308, $r12=var689, $r32=var1078, $z3=var3937, java.util.List=var2891, i2=var3600, i3=var3111}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.RenameVars;	r13 := @parameter0: java.util.SortedSet;	$r4 = r0.<com.google.javascript.jscomp.RenameVars: com.google.javascript.jscomp.NameGenerator nameGenerator>;	$r3 = r0.<com.google.javascript.jscomp.RenameVars: java.util.Set reservedNames>;	$r2 = r0.<com.google.javascript.jscomp.RenameVars: java.lang.String prefix>;	$r1 = r0.<com.google.javascript.jscomp.RenameVars: char[] reservedCharacters>;	interfaceinvoke $r4.<com.google.javascript.jscomp.NameGenerator: void reset(java.util.Set,java.lang.String,char[])>($r3, $r2, $r1);	r5 = r0.<com.google.javascript.jscomp.RenameVars: com.google.javascript.jscomp.NameGenerator nameGenerator>;	$r6 = r0.<com.google.javascript.jscomp.RenameVars: java.lang.String prefix>;	$z0 = virtualinvoke $r6.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r9 = r0.<com.google.javascript.jscomp.RenameVars: com.google.javascript.jscomp.NameGenerator nameGenerator>;	$r9 = r0.<com.google.javascript.jscomp.RenameVars: com.google.javascript.jscomp.NameGenerator nameGenerator>;	$r8 = r0.<com.google.javascript.jscomp.RenameVars: java.util.Set reservedNames>;	$r7 = r0.<com.google.javascript.jscomp.RenameVars: char[] reservedCharacters>;	$r33 = interfaceinvoke $r9.<com.google.javascript.jscomp.NameGenerator: com.google.javascript.jscomp.NameGenerator clone(java.util.Set,java.lang.String,char[])>($r8, "", $r7);	r10 = $r33;	$r11 = new java.util.ArrayList;	specialinvoke $r11.<java.util.ArrayList: void <init>()>();	$r12 = new java.util.ArrayList;	specialinvoke $r12.<java.util.ArrayList: void <init>()>();	$r32 = interfaceinvoke r13.<java.util.SortedSet: java.util.Iterator iterator()>();	$z3 = interfaceinvoke $r32.<java.util.Iterator: boolean hasNext()>();	if $z3 == 0 goto i2 = interfaceinvoke $r12.<java.util.List: int size()>();	i2 = interfaceinvoke $r12.<java.util.List: int size()>();	i3 = 0;	if i3 >= i2 goto return;	return
;block_num 7