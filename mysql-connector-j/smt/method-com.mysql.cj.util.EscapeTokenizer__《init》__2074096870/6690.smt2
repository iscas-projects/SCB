(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var650 0)
(declare-sort var435 0)
(declare-sort var273 0)
(declare-sort var63 0)
(declare-sort var3114 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var273) void)
(declare-fun cast-from-var650-to-var273 (var650) var273)
(declare-fun source/-2064918600 (var650) String)
(declare-fun sourceLength/-2064918600 (var650) Int)
(declare-fun pos/-2064918600 (var650) Int)
(declare-fun emittingEscapeCode/-2064918600 (var650) Bool)
(declare-fun sawVariableUse/-2064918600 (var650) Bool)
(declare-fun bracesLevel/-2064918600 (var650) Int)
(declare-fun inQuotes/-2064918600 (var650) Bool)
(declare-fun quoteChar/-2064918600 (var650) Int)
(declare-fun var63-init () var63)
(declare-fun <init>/-377021476 (var63) void)
(declare-fun cast-from-var63-to-var3114 (var63) var3114)
(declare-fun lock/-2064918600 (var650) var3114)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var650 var650)
(declare-const null-String String)
(declare-const var3849 var650) ; Statement: r0 := @this: com.mysql.cj.util.EscapeTokenizer 
(assert (not (= var3849 null-var650)))
(declare-const var1299 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1299 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var650-to-var273 var3849))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3849!1 var650)
(declare-const var3849!2 var650)
(assert (not (= var3849!2 null-var650)))
(assert (= (source/-2064918600 var3849!2) null-String)) ; Statement: r0.<com.mysql.cj.util.EscapeTokenizer: java.lang.String source> = null 
(declare-const var3849!3 var650)
(assert (not (= var3849!3 null-var650)))
(assert (= (sourceLength/-2064918600 var3849!3) 0)) ; Statement: r0.<com.mysql.cj.util.EscapeTokenizer: int sourceLength> = 0 
(declare-const var3849!4 var650)
(assert (not (= var3849!4 null-var650)))
(assert (= (pos/-2064918600 var3849!4) 0)) ; Statement: r0.<com.mysql.cj.util.EscapeTokenizer: int pos> = 0 
(declare-const var3849!5 var650)
(assert (not (= var3849!5 null-var650)))
(assert (= (emittingEscapeCode/-2064918600 var3849!5) (ite (= 1 0) true false))) ; Statement: r0.<com.mysql.cj.util.EscapeTokenizer: boolean emittingEscapeCode> = 0 
(declare-const var3849!6 var650)
(assert (not (= var3849!6 null-var650)))
(assert (= (sawVariableUse/-2064918600 var3849!6) (ite (= 1 0) true false))) ; Statement: r0.<com.mysql.cj.util.EscapeTokenizer: boolean sawVariableUse> = 0 
(declare-const var3849!7 var650)
(assert (not (= var3849!7 null-var650)))
(assert (= (bracesLevel/-2064918600 var3849!7) 0)) ; Statement: r0.<com.mysql.cj.util.EscapeTokenizer: int bracesLevel> = 0 
(declare-const var3849!8 var650)
(assert (not (= var3849!8 null-var650)))
(assert (= (inQuotes/-2064918600 var3849!8) (ite (= 1 0) true false))) ; Statement: r0.<com.mysql.cj.util.EscapeTokenizer: boolean inQuotes> = 0 
(declare-const var3849!9 var650)
(assert (not (= var3849!9 null-var650)))
(assert (= (quoteChar/-2064918600 var3849!9) 0)) ; Statement: r0.<com.mysql.cj.util.EscapeTokenizer: char quoteChar> = 0 
(define-const var681 var63 var63-init) ; Statement: $r1 = new java.util.concurrent.locks.ReentrantLock 
(assert true)
;(assert (<init>/-377021476 var681)) ; Statement: specialinvoke $r1.<java.util.concurrent.locks.ReentrantLock: void <init>()>() 

(declare-const var681!1 var63)
(declare-const var3849!10 var650)
(assert (not (= var3849!10 null-var650)))
(assert (= (lock/-2064918600 var3849!10) (cast-from-var63-to-var3114 var681!1))) ; Statement: r0.<com.mysql.cj.util.EscapeTokenizer: java.util.concurrent.locks.Lock lock> = $r1 
(declare-const var3849!11 var650)
(assert (not (= var3849!11 null-var650)))
(assert (= (source/-2064918600 var3849!11) var1299)) ; Statement: r0.<com.mysql.cj.util.EscapeTokenizer: java.lang.String source> = r2 
(assert true)
(define-const var1775 Int (length/-134980193 var1299)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(declare-const var3849!12 var650)
(assert (not (= var3849!12 null-var650)))
(assert (= (sourceLength/-2064918600 var3849!12) var1775)) ; Statement: r0.<com.mysql.cj.util.EscapeTokenizer: int sourceLength> = $i0 
(declare-const var3849!13 var650)
(assert (not (= var3849!13 null-var650)))
(assert (= (pos/-2064918600 var3849!13) 0)) ; Statement: r0.<com.mysql.cj.util.EscapeTokenizer: int pos> = 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var650-to-var273=([com.mysql.cj.util.EscapeTokenizer], java.lang.Object), source/-2064918600=([com.mysql.cj.util.EscapeTokenizer], java.lang.String), sourceLength/-2064918600=([com.mysql.cj.util.EscapeTokenizer], int), pos/-2064918600=([com.mysql.cj.util.EscapeTokenizer], int), emittingEscapeCode/-2064918600=([com.mysql.cj.util.EscapeTokenizer], boolean), sawVariableUse/-2064918600=([com.mysql.cj.util.EscapeTokenizer], boolean), bracesLevel/-2064918600=([com.mysql.cj.util.EscapeTokenizer], int), inQuotes/-2064918600=([com.mysql.cj.util.EscapeTokenizer], boolean), quoteChar/-2064918600=([com.mysql.cj.util.EscapeTokenizer], char), var63-init=([], java.util.concurrent.locks.ReentrantLock), <init>/-377021476=([java.util.concurrent.locks.ReentrantLock], void), cast-from-var63-to-var3114=([java.util.concurrent.locks.ReentrantLock], java.util.concurrent.locks.Lock), lock/-2064918600=([com.mysql.cj.util.EscapeTokenizer], java.util.concurrent.locks.Lock), length/-134980193=([java.lang.String], int)}
; {var650=com.mysql.cj.util.EscapeTokenizer, var3849=r0, var1299=r2, var435=null_type, var273=java.lang.Object, var63=java.util.concurrent.locks.ReentrantLock, var681=$r1, var3114=java.util.concurrent.locks.Lock, var1775=$i0}
; {com.mysql.cj.util.EscapeTokenizer=var650, r0=var3849, r2=var1299, null_type=var435, java.lang.Object=var273, java.util.concurrent.locks.ReentrantLock=var63, $r1=var681, java.util.concurrent.locks.Lock=var3114, $i0=var1775}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.mysql.cj.util.EscapeTokenizer;	r2 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.mysql.cj.util.EscapeTokenizer: java.lang.String source> = null;	r0.<com.mysql.cj.util.EscapeTokenizer: int sourceLength> = 0;	r0.<com.mysql.cj.util.EscapeTokenizer: int pos> = 0;	r0.<com.mysql.cj.util.EscapeTokenizer: boolean emittingEscapeCode> = 0;	r0.<com.mysql.cj.util.EscapeTokenizer: boolean sawVariableUse> = 0;	r0.<com.mysql.cj.util.EscapeTokenizer: int bracesLevel> = 0;	r0.<com.mysql.cj.util.EscapeTokenizer: boolean inQuotes> = 0;	r0.<com.mysql.cj.util.EscapeTokenizer: char quoteChar> = 0;	$r1 = new java.util.concurrent.locks.ReentrantLock;	specialinvoke $r1.<java.util.concurrent.locks.ReentrantLock: void <init>()>();	r0.<com.mysql.cj.util.EscapeTokenizer: java.util.concurrent.locks.Lock lock> = $r1;	r0.<com.mysql.cj.util.EscapeTokenizer: java.lang.String source> = r2;	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	r0.<com.mysql.cj.util.EscapeTokenizer: int sourceLength> = $i0;	r0.<com.mysql.cj.util.EscapeTokenizer: int pos> = 0;	return
;block_num 1