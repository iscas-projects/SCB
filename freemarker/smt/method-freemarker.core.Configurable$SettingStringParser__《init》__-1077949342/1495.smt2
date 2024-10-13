(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var233 0)
(declare-sort var2900 0)
(declare-sort var713 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var713) void)
(declare-fun cast-from-var233-to-var713 (var233) var713)
(declare-fun text/1872379452 (var233) String)
(declare-fun p/1872379452 (var233) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun ln/1872379452 (var233) Int)
(declare-const null-var233 var233)
(declare-const null-String String)
(declare-const var29 var233) ; Statement: r0 := @this: freemarker.core.Configurable$SettingStringParser 
(assert (not (= var29 null-var233)))
(declare-const var3065 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3065 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var233-to-var713 var29))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var29!1 var233)
(declare-const var29!2 var233)
(assert (not (= var29!2 null-var233)))
(assert (= (text/1872379452 var29!2) var3065)) ; Statement: r0.<freemarker.core.Configurable$SettingStringParser: java.lang.String text> = r1 
(declare-const var29!3 var233)
(assert (not (= var29!3 null-var233)))
(assert (= (p/1872379452 var29!3) 0)) ; Statement: r0.<freemarker.core.Configurable$SettingStringParser: int p> = 0 
(assert true)
(define-const var1817 Int (length/-134980193 var3065)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(declare-const var29!4 var233)
(assert (not (= var29!4 null-var233)))
(assert (= (ln/1872379452 var29!4) var1817)) ; Statement: r0.<freemarker.core.Configurable$SettingStringParser: int ln> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var233-to-var713=([freemarker.core.Configurable$SettingStringParser], java.lang.Object), text/1872379452=([freemarker.core.Configurable$SettingStringParser], java.lang.String), p/1872379452=([freemarker.core.Configurable$SettingStringParser], int), length/-134980193=([java.lang.String], int), ln/1872379452=([freemarker.core.Configurable$SettingStringParser], int)}
; {var233=freemarker.core.Configurable$SettingStringParser, var29=r0, var3065=r1, var2900=null_type, var713=java.lang.Object, var1817=$i0}
; {freemarker.core.Configurable$SettingStringParser=var233, r0=var29, r1=var3065, null_type=var2900, java.lang.Object=var713, $i0=var1817}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: freemarker.core.Configurable$SettingStringParser;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<freemarker.core.Configurable$SettingStringParser: java.lang.String text> = r1;	r0.<freemarker.core.Configurable$SettingStringParser: int p> = 0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	r0.<freemarker.core.Configurable$SettingStringParser: int ln> = $i0;	return
;block_num 1