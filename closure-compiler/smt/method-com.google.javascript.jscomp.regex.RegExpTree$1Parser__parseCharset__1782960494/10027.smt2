(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var289 0)
(declare-sort var3214 0)
(declare-sort var1776 0)
(declare-sort var1101 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$pattern/117970391 (var289) String)
(declare-fun pos/117970391 (var289) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3214_checkState/1431124798 (Bool) void)
(declare-fun val$flags/117970391 (var289) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun limit/117970391 (var289) Int)
(declare-fun var1101-init () var1101)
(declare-fun <init>/829135842 (var1101 var1776 var1776) void)
(declare-const null-var289 var289)
(declare-const var1776-EMPTY var1776)
(declare-const var2734 var289) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser 
(assert (not (= var2734 null-var289)))
(define-const var1165 String (val$pattern/117970391 var2734)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern> 
(define-const var130 Int (pos/117970391 var2734)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(assert (and true (and (> (str.len var1165) var130) (<= 0 var130))))
(define-const var2258 Int (charAt/698050440 var1165 var130)) ; Statement: $c1 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0) 
(define-const var3957 Int (cast-from-Int-to-Int var2258)) ; Statement: $i45 = (int) $c1 
 ; Statement: if $i45 != 91 goto $z3 = 0 
(assert (not (= var3957 91))) ; Cond: $i45 != 91 
(define-const var2992 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
;(assert (var3214_checkState/1431124798 var2992)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3) 

(declare-const var2992!1 Bool)
(define-const var2275 Int (pos/117970391 var2734)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var1528 Int (+ var2275 1)) ; Statement: $i3 = $i2 + 1 
(declare-const var2734!1 var289)
(assert (not (= var2734!1 null-var289)))
(assert (= (pos/117970391 var2734!1) var1528)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i3 
(define-const var815 String (val$flags/117970391 var2734!1)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$flags> 
(assert true)
(define-const var3102 Int (indexOf/-1037706067 var815 105)) ; Statement: $i4 = virtualinvoke $r2.<java.lang.String: int indexOf(int)>(105) 
 ; Statement: if $i4 < 0 goto $z4 = 0 
(assert (< var3102 0)) ; Cond: $i4 < 0 
(define-const var3498 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
(assert true) ; Non Conditional
(define-const var2609 Bool var3498) ; Statement: z0 = $z4 
(define-const var350 Int (pos/117970391 var2734!1)) ; Statement: $i6 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var246 Int (limit/117970391 var2734!1)) ; Statement: $i5 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit> 
 ; Statement: if $i6 >= $i5 goto $z8 = 0 
(assert (>= var350 var246)) ; Cond: $i6 >= $i5 
(define-const var3340 Bool (ite (= 1 0) true false)) ; Statement: $z8 = 0 
(define-const var3008 Bool (ite (= 1 0) true false)) ; Statement: $z7 = 0 
(assert true) ; Non Conditional
(define-const var672 Bool var3008) ; Statement: z1 = $z7 
 ; Statement: if $z8 == 0 goto r18 = <com.google.javascript.jscomp.regex.CharRanges: com.google.javascript.jscomp.regex.CharRanges EMPTY> 
(assert (= (ite var3340 1 0) 0)) ; Cond: $z8 == 0 
(define-const var1026 var1776 var1776-EMPTY) ; Statement: r18 = <com.google.javascript.jscomp.regex.CharRanges: com.google.javascript.jscomp.regex.CharRanges EMPTY> 
(define-const var860 var1776 var1776-EMPTY) ; Statement: r19 = <com.google.javascript.jscomp.regex.CharRanges: com.google.javascript.jscomp.regex.CharRanges EMPTY> 
(assert true) ; Non Conditional
(define-const var795 Int (pos/117970391 var2734!1)) ; Statement: $i38 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var1247 Int (limit/117970391 var2734!1)) ; Statement: $i39 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit> 
 ; Statement: if $i38 >= $i39 goto $i7 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(assert (>= var795 var1247)) ; Cond: $i38 >= $i39 
(define-const var428 Int (pos/117970391 var2734!1)) ; Statement: $i7 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> 
(define-const var1884 Int (+ var428 1)) ; Statement: $i8 = $i7 + 1 
(declare-const var2734!2 var289)
(assert (not (= var2734!2 null-var289)))
(assert (= (pos/117970391 var2734!2) var1884)) ; Statement: r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i8 
 ; Statement: if z1 == 0 goto $r24 = new com.google.javascript.jscomp.regex.RegExpTree$Charset 
(assert (= (ite var672 1 0) 0)) ; Cond: z1 == 0 
(define-const var977 var1101 var1101-init) ; Statement: $r24 = new com.google.javascript.jscomp.regex.RegExpTree$Charset 
(assert true)
;(assert (<init>/829135842 var977 var1026 var860)) ; Statement: specialinvoke $r24.<com.google.javascript.jscomp.regex.RegExpTree$Charset: void <init>(com.google.javascript.jscomp.regex.CharRanges,com.google.javascript.jscomp.regex.CharRanges)>(r18, r19) 

(declare-const var977!1 var1101)
(declare-const var1026!1 var1776)
(declare-const var860!1 var1776)
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {val$pattern/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], java.lang.String), pos/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var3214_checkState/1431124798=([boolean], void), val$flags/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), limit/117970391=([com.google.javascript.jscomp.regex.RegExpTree$1Parser], int), var1101-init=([], com.google.javascript.jscomp.regex.RegExpTree$Charset), <init>/829135842=([com.google.javascript.jscomp.regex.RegExpTree$Charset, com.google.javascript.jscomp.regex.CharRanges, com.google.javascript.jscomp.regex.CharRanges], void)}
; {var289=com.google.javascript.jscomp.regex.RegExpTree$1Parser, var2734=r0, var1165=$r1, var130=$i0, var2258=$c1, var3957=$i45, var2992=$z3, var3214=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2275=$i2, var1528=$i3, var815=$r2, var3102=$i4, var3498=$z4, var2609=z0, var350=$i6, var246=$i5, var3340=$z8, var3008=$z7, var672=z1, var1776=com.google.javascript.jscomp.regex.CharRanges, var1026=r18, var860=r19, var795=$i38, var1247=$i39, var428=$i7, var1884=$i8, var1101=com.google.javascript.jscomp.regex.RegExpTree$Charset, var977=$r24}
; {com.google.javascript.jscomp.regex.RegExpTree$1Parser=var289, r0=var2734, $r1=var1165, $i0=var130, $c1=var2258, $i45=var3957, $z3=var2992, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3214, $i2=var2275, $i3=var1528, $r2=var815, $i4=var3102, $z4=var3498, z0=var2609, $i6=var350, $i5=var246, $z8=var3340, $z7=var3008, z1=var672, com.google.javascript.jscomp.regex.CharRanges=var1776, r18=var1026, r19=var860, $i38=var795, $i39=var1247, $i7=var428, $i8=var1884, com.google.javascript.jscomp.regex.RegExpTree$Charset=var1101, $r24=var977}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$1Parser;	$r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$pattern>;	$i0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$c1 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0);	$i45 = (int) $c1;	if $i45 != 91 goto $z3 = 0;	$z3 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3);	$i2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i3 = $i2 + 1;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i3;	$r2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: java.lang.String val$flags>;	$i4 = virtualinvoke $r2.<java.lang.String: int indexOf(int)>(105);	if $i4 < 0 goto $z4 = 0;	$z4 = 0;	z0 = $z4;	$i6 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i5 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit>;	if $i6 >= $i5 goto $z8 = 0;	$z8 = 0;	$z7 = 0;	z1 = $z7;	if $z8 == 0 goto r18 = <com.google.javascript.jscomp.regex.CharRanges: com.google.javascript.jscomp.regex.CharRanges EMPTY>;	r18 = <com.google.javascript.jscomp.regex.CharRanges: com.google.javascript.jscomp.regex.CharRanges EMPTY>;	r19 = <com.google.javascript.jscomp.regex.CharRanges: com.google.javascript.jscomp.regex.CharRanges EMPTY>;	$i38 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i39 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int limit>;	if $i38 >= $i39 goto $i7 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i7 = r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos>;	$i8 = $i7 + 1;	r0.<com.google.javascript.jscomp.regex.RegExpTree$1Parser: int pos> = $i8;	if z1 == 0 goto $r24 = new com.google.javascript.jscomp.regex.RegExpTree$Charset;	$r24 = new com.google.javascript.jscomp.regex.RegExpTree$Charset;	specialinvoke $r24.<com.google.javascript.jscomp.regex.RegExpTree$Charset: void <init>(com.google.javascript.jscomp.regex.CharRanges,com.google.javascript.jscomp.regex.CharRanges)>(r18, r19);	return $r24
;block_num 11