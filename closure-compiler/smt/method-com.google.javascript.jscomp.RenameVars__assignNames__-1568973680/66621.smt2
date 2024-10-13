(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3983 0)
(declare-sort var3312 0)
(declare-sort var237 0)
(declare-sort var1576 0)
(declare-sort var1204 0)
(declare-sort var2136 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nameGenerator/1685743079 (var3983) var237)
(declare-fun reservedNames/1685743079 (var3983) var1576)
(declare-fun prefix/1685743079 (var3983) String)
(declare-fun reservedCharacters/1685743079 (var3983) (Array Int Int))
(declare-fun var237_reset/1325852242 (var237 var1576 String (Array Int Int)) void)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var1204-init () var1204)
(declare-fun <init>/-325640736 (var1204) void)
(declare-fun var1576_iterator/1911472585 (var1576) Iterator)
(declare-fun cast-from-var3312-to-var1576 (var3312) var1576)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var2136_size/-959786421 (var2136) Int)
(declare-fun cast-from-var1204-to-var2136 (var1204) var2136)
(declare-const null-var3983 var3983)
(declare-const null-var3312 var3312)
(declare-const var2598 var3983) ; Statement: r0 := @this: com.google.javascript.jscomp.RenameVars 
(assert (not (= var2598 null-var3983)))
(declare-const var2258 var3312) ; Statement: r13 := @parameter0: java.util.SortedSet 
(assert (not (= var2258 null-var3312)))
(define-const var3071 var237 (nameGenerator/1685743079 var2598)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.RenameVars: com.google.javascript.jscomp.NameGenerator nameGenerator> 
(define-const var3475 var1576 (reservedNames/1685743079 var2598)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.RenameVars: java.util.Set reservedNames> 
(define-const var1818 String (prefix/1685743079 var2598)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.RenameVars: java.lang.String prefix> 
(define-const var1006 (Array Int Int) (reservedCharacters/1685743079 var2598)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.RenameVars: char[] reservedCharacters> 
;(assert (var237_reset/1325852242 var3071 var3475 var1818 var1006)) ; Statement: interfaceinvoke $r4.<com.google.javascript.jscomp.NameGenerator: void reset(java.util.Set,java.lang.String,char[])>($r3, $r2, $r1) 

(declare-const var3071!1 var237)
(declare-const var3475!1 var1576)
(declare-const var1818!1 String)
(declare-const var1006!1 (Array Int Int))
(define-const var1601 var237 (nameGenerator/1685743079 var2598)) ; Statement: r5 = r0.<com.google.javascript.jscomp.RenameVars: com.google.javascript.jscomp.NameGenerator nameGenerator> 
(define-const var1139 String (prefix/1685743079 var2598)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.RenameVars: java.lang.String prefix> 
(assert true)
(define-const var2072 Bool (isEmpty/-1285796103 var1139)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r9 = r0.<com.google.javascript.jscomp.RenameVars: com.google.javascript.jscomp.NameGenerator nameGenerator> 
(assert (not (= (ite var2072 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2331 var237 var1601) ; Statement: $r33 = r5 
 ; Statement: goto [?= r10 = $r33] 
(assert true) ; Non Conditional
(define-const var2221 var237 var2331) ; Statement: r10 = $r33 
(define-const var1741 var1204 var1204-init) ; Statement: $r11 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1741)) ; Statement: specialinvoke $r11.<java.util.ArrayList: void <init>()>() 

(declare-const var1741!1 var1204)
(define-const var3008 var1204 var1204-init) ; Statement: $r12 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3008)) ; Statement: specialinvoke $r12.<java.util.ArrayList: void <init>()>() 

(declare-const var3008!1 var1204)
(define-const var3719 Iterator (var1576_iterator/1911472585 (cast-from-var3312-to-var1576 var2258))) ; Statement: $r32 = interfaceinvoke r13.<java.util.SortedSet: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3073 Bool (Iterator_hasNext/-1669924200 var3719)) ; Statement: $z3 = interfaceinvoke $r32.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z3 == 0 goto i2 = interfaceinvoke $r12.<java.util.List: int size()>() 
(assert (= (ite var3073 1 0) 0)) ; Cond: $z3 == 0 
(define-const var2138 Int (var2136_size/-959786421 (cast-from-var1204-to-var2136 var3008!1))) ; Statement: i2 = interfaceinvoke $r12.<java.util.List: int size()>() 
(define-const var949 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i2 goto return 
(assert (>= var949 var2138)) ; Cond: i3 >= i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {nameGenerator/1685743079=([com.google.javascript.jscomp.RenameVars], com.google.javascript.jscomp.NameGenerator), reservedNames/1685743079=([com.google.javascript.jscomp.RenameVars], java.util.Set), prefix/1685743079=([com.google.javascript.jscomp.RenameVars], java.lang.String), reservedCharacters/1685743079=([com.google.javascript.jscomp.RenameVars], char[]), var237_reset/1325852242=([com.google.javascript.jscomp.NameGenerator, java.util.Set, java.lang.String, char[]], void), isEmpty/-1285796103=([java.lang.String], boolean), var1204-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), var1576_iterator/1911472585=([java.util.Set], java.util.Iterator), cast-from-var3312-to-var1576=([java.util.SortedSet], java.util.Set), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var2136_size/-959786421=([java.util.List], int), cast-from-var1204-to-var2136=([java.util.ArrayList], java.util.List)}
; {var3983=com.google.javascript.jscomp.RenameVars, var2598=r0, var3312=java.util.SortedSet, var2258=r13, var237=com.google.javascript.jscomp.NameGenerator, var3071=$r4, var1576=java.util.Set, var3475=$r3, var1818=$r2, var1006=$r1, var1601=r5, var1139=$r6, var2072=$z0, var2331=$r33, var2221=r10, var1204=java.util.ArrayList, var1741=$r11, var3008=$r12, var3719=$r32, var3073=$z3, var2136=java.util.List, var2138=i2, var949=i3}
; {com.google.javascript.jscomp.RenameVars=var3983, r0=var2598, java.util.SortedSet=var3312, r13=var2258, com.google.javascript.jscomp.NameGenerator=var237, $r4=var3071, java.util.Set=var1576, $r3=var3475, $r2=var1818, $r1=var1006, r5=var1601, $r6=var1139, $z0=var2072, $r33=var2331, r10=var2221, java.util.ArrayList=var1204, $r11=var1741, $r12=var3008, $r32=var3719, $z3=var3073, java.util.List=var2136, i2=var2138, i3=var949}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.RenameVars;	r13 := @parameter0: java.util.SortedSet;	$r4 = r0.<com.google.javascript.jscomp.RenameVars: com.google.javascript.jscomp.NameGenerator nameGenerator>;	$r3 = r0.<com.google.javascript.jscomp.RenameVars: java.util.Set reservedNames>;	$r2 = r0.<com.google.javascript.jscomp.RenameVars: java.lang.String prefix>;	$r1 = r0.<com.google.javascript.jscomp.RenameVars: char[] reservedCharacters>;	interfaceinvoke $r4.<com.google.javascript.jscomp.NameGenerator: void reset(java.util.Set,java.lang.String,char[])>($r3, $r2, $r1);	r5 = r0.<com.google.javascript.jscomp.RenameVars: com.google.javascript.jscomp.NameGenerator nameGenerator>;	$r6 = r0.<com.google.javascript.jscomp.RenameVars: java.lang.String prefix>;	$z0 = virtualinvoke $r6.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r9 = r0.<com.google.javascript.jscomp.RenameVars: com.google.javascript.jscomp.NameGenerator nameGenerator>;	$r33 = r5;	goto [?= r10 = $r33];	r10 = $r33;	$r11 = new java.util.ArrayList;	specialinvoke $r11.<java.util.ArrayList: void <init>()>();	$r12 = new java.util.ArrayList;	specialinvoke $r12.<java.util.ArrayList: void <init>()>();	$r32 = interfaceinvoke r13.<java.util.SortedSet: java.util.Iterator iterator()>();	$z3 = interfaceinvoke $r32.<java.util.Iterator: boolean hasNext()>();	if $z3 == 0 goto i2 = interfaceinvoke $r12.<java.util.List: int size()>();	i2 = interfaceinvoke $r12.<java.util.List: int size()>();	i3 = 0;	if i3 >= i2 goto return;	return
;block_num 7