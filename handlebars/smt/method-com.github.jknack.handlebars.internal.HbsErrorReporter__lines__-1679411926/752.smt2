(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3719 0)
(declare-sort var1289 0)
(declare-sort var1735 0)
(declare-sort var3468 0)
(declare-sort var3691 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getInputStream/1878812050 (var1289) var1735)
(declare-fun cast-from-var1735-to-var3468 (var1735) var3468)
(declare-fun var3691-init () var3691)
(declare-fun var1735_size/1488500754 (var1735) Int)
(declare-fun <init>/-1187952244 (var3691 Int Int) void)
(declare-fun var3468_getText/-507512492 (var3468 var3691) String)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-const null-var3719 var3719)
(declare-const null-var1289 var1289)
(declare-const var1518 var3719) ; Statement: r6 := @this: com.github.jknack.handlebars.internal.HbsErrorReporter 
(assert (not (= var1518 null-var3719)))
(declare-const var2218 var1289) ; Statement: r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.Recognizer 
(assert (not (= var2218 null-var1289)))
(assert true)
(define-const var1191 var1735 (getInputStream/1878812050 var2218)) ; Statement: r7 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.Recognizer: com.github.jknack.handlebars.internal.antlr.IntStream getInputStream()>() 
(define-const var2412 Bool true) ; Statement: $z0 = r7 instanceof com.github.jknack.handlebars.internal.antlr.CommonTokenStream 
 ; Statement: if $z0 == 0 goto $z1 = r7 instanceof com.github.jknack.handlebars.internal.antlr.CharStream 
(assert (= (ite var2412 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3624 Bool true) ; Statement: $z1 = r7 instanceof com.github.jknack.handlebars.internal.antlr.CharStream 
 ; Statement: if $z1 == 0 goto r8 = virtualinvoke r7.<java.lang.Object: java.lang.String toString()>() 
(assert (not (= (ite var3624 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1240 var3468 (cast-from-var1735-to-var3468 var1191)) ; Statement: $r2 = (com.github.jknack.handlebars.internal.antlr.CharStream) r7 
(define-const var3283 var3691 var3691-init) ; Statement: $r1 = new com.github.jknack.handlebars.internal.antlr.misc.Interval 
(define-const var2266 Int (var1735_size/1488500754 var1191)) ; Statement: $i0 = interfaceinvoke r7.<com.github.jknack.handlebars.internal.antlr.IntStream: int size()>() 
(assert true)
;(assert (<init>/-1187952244 var3283 0 var2266)) ; Statement: specialinvoke $r1.<com.github.jknack.handlebars.internal.antlr.misc.Interval: void <init>(int,int)>(0, $i0) 

(declare-const var3283!1 var3691)
(declare-const var144 Int)
(declare-const var2266!1 Int)
(define-const var1949 String (var3468_getText/-507512492 var1240 var3283!1)) ; Statement: r8 = interfaceinvoke $r2.<com.github.jknack.handlebars.internal.antlr.CharStream: java.lang.String getText(com.github.jknack.handlebars.internal.antlr.misc.Interval)>($r1) 
 ; Statement: goto [?= $r3 = virtualinvoke r8.<java.lang.String: java.lang.String[] split(java.lang.String)>("\n")] 
(assert true) ; Non Conditional
(assert true)
(define-const var3102 (Array Int String) (split/-636890950 var1949 "\n")) ; Statement: $r3 = virtualinvoke r8.<java.lang.String: java.lang.String[] split(java.lang.String)>("\n") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var1949 "\n") i) (re.++ (re.* re.all) (str.to_re "\u{005c}u{000a}") (re.* re.all))))))
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getInputStream/1878812050=([com.github.jknack.handlebars.internal.antlr.Recognizer], com.github.jknack.handlebars.internal.antlr.IntStream), cast-from-var1735-to-var3468=([com.github.jknack.handlebars.internal.antlr.IntStream], com.github.jknack.handlebars.internal.antlr.CharStream), var3691-init=([], com.github.jknack.handlebars.internal.antlr.misc.Interval), var1735_size/1488500754=([com.github.jknack.handlebars.internal.antlr.IntStream], int), <init>/-1187952244=([com.github.jknack.handlebars.internal.antlr.misc.Interval, int, int], void), var3468_getText/-507512492=([com.github.jknack.handlebars.internal.antlr.CharStream, com.github.jknack.handlebars.internal.antlr.misc.Interval], java.lang.String), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[])}
; {var3719=com.github.jknack.handlebars.internal.HbsErrorReporter, var1518=r6, var1289=com.github.jknack.handlebars.internal.antlr.Recognizer, var2218=r0, var1735=com.github.jknack.handlebars.internal.antlr.IntStream, var1191=r7, var2412=$z0, var3624=$z1, var3468=com.github.jknack.handlebars.internal.antlr.CharStream, var1240=$r2, var3691=com.github.jknack.handlebars.internal.antlr.misc.Interval, var3283=$r1, var2266=$i0, var144=0, var1949=r8, var3102=$r3}
; {com.github.jknack.handlebars.internal.HbsErrorReporter=var3719, r6=var1518, com.github.jknack.handlebars.internal.antlr.Recognizer=var1289, r0=var2218, com.github.jknack.handlebars.internal.antlr.IntStream=var1735, r7=var1191, $z0=var2412, $z1=var3624, com.github.jknack.handlebars.internal.antlr.CharStream=var3468, $r2=var1240, com.github.jknack.handlebars.internal.antlr.misc.Interval=var3691, $r1=var3283, $i0=var2266, 0=var144, r8=var1949, $r3=var3102}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r6 := @this: com.github.jknack.handlebars.internal.HbsErrorReporter;	r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.Recognizer;	r7 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.Recognizer: com.github.jknack.handlebars.internal.antlr.IntStream getInputStream()>();	$z0 = r7 instanceof com.github.jknack.handlebars.internal.antlr.CommonTokenStream;	if $z0 == 0 goto $z1 = r7 instanceof com.github.jknack.handlebars.internal.antlr.CharStream;	$z1 = r7 instanceof com.github.jknack.handlebars.internal.antlr.CharStream;	if $z1 == 0 goto r8 = virtualinvoke r7.<java.lang.Object: java.lang.String toString()>();	$r2 = (com.github.jknack.handlebars.internal.antlr.CharStream) r7;	$r1 = new com.github.jknack.handlebars.internal.antlr.misc.Interval;	$i0 = interfaceinvoke r7.<com.github.jknack.handlebars.internal.antlr.IntStream: int size()>();	specialinvoke $r1.<com.github.jknack.handlebars.internal.antlr.misc.Interval: void <init>(int,int)>(0, $i0);	r8 = interfaceinvoke $r2.<com.github.jknack.handlebars.internal.antlr.CharStream: java.lang.String getText(com.github.jknack.handlebars.internal.antlr.misc.Interval)>($r1);	goto [?= $r3 = virtualinvoke r8.<java.lang.String: java.lang.String[] split(java.lang.String)>("\n")];	$r3 = virtualinvoke r8.<java.lang.String: java.lang.String[] split(java.lang.String)>("\n");	return $r3
;block_num 4