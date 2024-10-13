(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1473 0)
(declare-sort var3443 0)
(declare-sort var708 0)
(declare-sort var908 0)
(declare-sort var1396 0)
(declare-sort var1571 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3443-init () var3443)
(declare-fun var708-init () var708)
(declare-fun <init>/814598262 (var708 String) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/-452486408 (var3443 var908 Int Int Int) void)
(declare-fun cast-from-var708-to-var908 (var708) var908)
(declare-fun var1396-init () var1396)
(declare-fun <init>/2099619409 (var1396 var3443) void)
(declare-fun SwitchTo/-1839513100 (var1396 Int) void)
(declare-fun var1571-init () var1571)
(declare-fun <init>/1193223215 (var1571 var1396) void)
(declare-fun setParser/763871378 (var1396 var1571) void)
(declare-const null-String String)
(declare-const var1987 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1987 null-String)))
(define-const var836 var3443 var3443-init) ; Statement: $r0 = new freemarker.core.SimpleCharStream 
(define-const var515 var708 var708-init) ; Statement: $r1 = new java.io.StringReader 
(assert true)
;(assert (<init>/814598262 var515 var1987)) ; Statement: specialinvoke $r1.<java.io.StringReader: void <init>(java.lang.String)>(r2) 

(declare-const var515!1 var708)
(declare-const var1987!1 String)
(assert true)
(define-const var405 Int (length/-134980193 var1987!1)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(assert true)
;(assert (<init>/-452486408 var836 (cast-from-var708-to-var908 var515!1) 1 1 var405)) ; Statement: specialinvoke $r0.<freemarker.core.SimpleCharStream: void <init>(java.io.Reader,int,int,int)>($r1, 1, 1, $i0) 

(declare-const var836!1 var3443)
(declare-const var515!2 var708)
(declare-const var742 Int)
(declare-const var742!1 Int)
(declare-const var405!1 Int)
(define-const var1221 var1396 var1396-init) ; Statement: $r3 = new freemarker.core.FMParserTokenManager 
(assert true)
;(assert (<init>/2099619409 var1221 var836!1)) ; Statement: specialinvoke $r3.<freemarker.core.FMParserTokenManager: void <init>(freemarker.core.SimpleCharStream)>($r0) 

(declare-const var1221!1 var1396)
(declare-const var836!2 var3443)
(assert true)
;(assert (SwitchTo/-1839513100 var1221!1 2)) ; Statement: virtualinvoke $r3.<freemarker.core.FMParserTokenManager: void SwitchTo(int)>(2) 

(declare-const var1221!2 var1396)
(declare-const var3842 Int)
(define-const var2861 var1571 var1571-init) ; Statement: $r4 = new freemarker.core.FMParser 
(assert true)
;(assert (<init>/1193223215 var2861 var1221!2)) ; Statement: specialinvoke $r4.<freemarker.core.FMParser: void <init>(freemarker.core.FMParserTokenManager)>($r3) 

(declare-const var2861!1 var1571)
(declare-const var1221!3 var1396)
(assert true)
;(assert (setParser/763871378 var1221!3 var2861!1)) ; Statement: virtualinvoke $r3.<freemarker.core.FMParserTokenManager: void setParser(freemarker.core.FMParser)>($r4) 

(declare-const var1221!4 var1396)
(declare-const var2861!2 var1571)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3443-init=([], freemarker.core.SimpleCharStream), var708-init=([], java.io.StringReader), <init>/814598262=([java.io.StringReader, java.lang.String], void), length/-134980193=([java.lang.String], int), <init>/-452486408=([freemarker.core.SimpleCharStream, java.io.Reader, int, int, int], void), cast-from-var708-to-var908=([java.io.StringReader], java.io.Reader), var1396-init=([], freemarker.core.FMParserTokenManager), <init>/2099619409=([freemarker.core.FMParserTokenManager, freemarker.core.SimpleCharStream], void), SwitchTo/-1839513100=([freemarker.core.FMParserTokenManager, int], void), var1571-init=([], freemarker.core.FMParser), <init>/1193223215=([freemarker.core.FMParser, freemarker.core.FMParserTokenManager], void), setParser/763871378=([freemarker.core.FMParserTokenManager, freemarker.core.FMParser], void)}
; {var1987=r2, var1473=null_type, var3443=freemarker.core.SimpleCharStream, var836=$r0, var708=java.io.StringReader, var515=$r1, var405=$i0, var908=java.io.Reader, var742=1, var1396=freemarker.core.FMParserTokenManager, var1221=$r3, var3842=2, var1571=freemarker.core.FMParser, var2861=$r4}
; {r2=var1987, null_type=var1473, freemarker.core.SimpleCharStream=var3443, $r0=var836, java.io.StringReader=var708, $r1=var515, $i0=var405, java.io.Reader=var908, 1=var742, freemarker.core.FMParserTokenManager=var1396, $r3=var1221, 2=var3842, freemarker.core.FMParser=var1571, $r4=var2861}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r2 := @parameter0: java.lang.String;	$r0 = new freemarker.core.SimpleCharStream;	$r1 = new java.io.StringReader;	specialinvoke $r1.<java.io.StringReader: void <init>(java.lang.String)>(r2);	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	specialinvoke $r0.<freemarker.core.SimpleCharStream: void <init>(java.io.Reader,int,int,int)>($r1, 1, 1, $i0);	$r3 = new freemarker.core.FMParserTokenManager;	specialinvoke $r3.<freemarker.core.FMParserTokenManager: void <init>(freemarker.core.SimpleCharStream)>($r0);	virtualinvoke $r3.<freemarker.core.FMParserTokenManager: void SwitchTo(int)>(2);	$r4 = new freemarker.core.FMParser;	specialinvoke $r4.<freemarker.core.FMParser: void <init>(freemarker.core.FMParserTokenManager)>($r3);	virtualinvoke $r3.<freemarker.core.FMParserTokenManager: void setParser(freemarker.core.FMParser)>($r4);	return $r4
;block_num 1