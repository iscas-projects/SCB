(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2951 0)
(declare-sort var2804 0)
(declare-sort var755 0)
(declare-sort var2053 0)
(declare-sort var2238 0)
(declare-sort var2735 0)
(declare-sort var2259 0)
(declare-sort var1655 0)
(declare-sort var3395 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2238) void)
(declare-fun cast-from-var2951-to-var2238 (var2951) var2238)
(declare-fun var2735-init () var2735)
(declare-fun <init>/451842749 (var2735) void)
(declare-fun cast-from-var2735-to-var2259 (var2735) var2259)
(declare-fun classes/-930696547 (var2951) var2259)
(declare-fun ignoreLoadError/-930696547 (var2951) Bool)
(declare-fun classesOfLoadError/-930696547 (var2951) var2259)
(declare-fun var1655_nullToEmpty/-379247643 (String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun packageName/-930696547 (var2951) String)
(declare-fun var1655_addSuffixIfNot/-1841592187 (String String) String)
(declare-fun packageNameWithDot/-930696547 (var2951) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun packageDirName/-930696547 (var2951) String)
(declare-fun packagePath/-930696547 (var2951) String)
(declare-fun classFilter/-930696547 (var2951) var755)
(declare-fun charset/-930696547 (var2951) var2053)
(declare-const null-var2951 var2951)
(declare-const null-String String)
(declare-const null-var755 var755)
(declare-const null-var2053 var2053)
(declare-const var3395-separatorChar Int)
(declare-const var2575 var2951) ; Statement: r0 := @this: cn.hutool.core.lang.ClassScanner 
(assert (not (= var2575 null-var2951)))
(declare-const var2309 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var2309 null-String)))
(declare-const var658 var755) ; Statement: r6 := @parameter1: cn.hutool.core.lang.Filter 
(assert (not (= var658 null-var755)))
(declare-const var2751 var2053) ; Statement: r7 := @parameter2: java.nio.charset.Charset 
(assert (not (= var2751 null-var2053)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2951-to-var2238 var2575))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2575!1 var2951)
(define-const var2942 var2735 var2735-init) ; Statement: $r1 = new java.util.HashSet 
(assert true)
;(assert (<init>/451842749 var2942)) ; Statement: specialinvoke $r1.<java.util.HashSet: void <init>()>() 

(declare-const var2942!1 var2735)
(declare-const var2575!2 var2951)
(assert (not (= var2575!2 null-var2951)))
(assert (= (classes/-930696547 var2575!2) (cast-from-var2735-to-var2259 var2942!1))) ; Statement: r0.<cn.hutool.core.lang.ClassScanner: java.util.Set classes> = $r1 
(declare-const var2575!3 var2951)
(assert (not (= var2575!3 null-var2951)))
(assert (= (ignoreLoadError/-930696547 var2575!3) (ite (= 1 0) true false))) ; Statement: r0.<cn.hutool.core.lang.ClassScanner: boolean ignoreLoadError> = 0 
(define-const var1231 var2735 var2735-init) ; Statement: $r2 = new java.util.HashSet 
(assert true)
;(assert (<init>/451842749 var1231)) ; Statement: specialinvoke $r2.<java.util.HashSet: void <init>()>() 

(declare-const var1231!1 var2735)
(declare-const var2575!4 var2951)
(assert (not (= var2575!4 null-var2951)))
(assert (= (classesOfLoadError/-930696547 var2575!4) (cast-from-var2735-to-var2259 var1231!1))) ; Statement: r0.<cn.hutool.core.lang.ClassScanner: java.util.Set classesOfLoadError> = $r2 
(define-const var1562 String (var1655_nullToEmpty/-379247643 (cast-from-String-to-String var2309))) ; Statement: r9 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>(r8) 
(declare-const var2575!5 var2951)
(assert (not (= var2575!5 null-var2951)))
(assert (= (packageName/-930696547 var2575!5) var1562)) ; Statement: r0.<cn.hutool.core.lang.ClassScanner: java.lang.String packageName> = r9 
(define-const var2537 String (var1655_addSuffixIfNot/-1841592187 (cast-from-String-to-String var1562) (cast-from-String-to-String "."))) ; Statement: $r3 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addSuffixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r9, ".") 
(declare-const var2575!6 var2951)
(assert (not (= var2575!6 null-var2951)))
(assert (= (packageNameWithDot/-930696547 var2575!6) var2537)) ; Statement: r0.<cn.hutool.core.lang.ClassScanner: java.lang.String packageNameWithDot> = $r3 
(define-const var3654 Int var3395-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(assert true)
(define-const var2723 String (replace/1524665721 var1562 46 var3654)) ; Statement: $r4 = virtualinvoke r9.<java.lang.String: java.lang.String replace(char,char)>(46, $c0) 
(declare-const var2575!7 var2951)
(assert (not (= var2575!7 null-var2951)))
(assert (= (packageDirName/-930696547 var2575!7) var2723)) ; Statement: r0.<cn.hutool.core.lang.ClassScanner: java.lang.String packageDirName> = $r4 
(assert true)
(define-const var1981 String (replace/1524665721 var1562 46 47)) ; Statement: $r5 = virtualinvoke r9.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(declare-const var2575!8 var2951)
(assert (not (= var2575!8 null-var2951)))
(assert (= (packagePath/-930696547 var2575!8) var1981)) ; Statement: r0.<cn.hutool.core.lang.ClassScanner: java.lang.String packagePath> = $r5 
(declare-const var2575!9 var2951)
(assert (not (= var2575!9 null-var2951)))
(assert (= (classFilter/-930696547 var2575!9) var658)) ; Statement: r0.<cn.hutool.core.lang.ClassScanner: cn.hutool.core.lang.Filter classFilter> = r6 
(declare-const var2575!10 var2951)
(assert (not (= var2575!10 null-var2951)))
(assert (= (charset/-930696547 var2575!10) var2751)) ; Statement: r0.<cn.hutool.core.lang.ClassScanner: java.nio.charset.Charset charset> = r7 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2951-to-var2238=([cn.hutool.core.lang.ClassScanner], java.lang.Object), var2735-init=([], java.util.HashSet), <init>/451842749=([java.util.HashSet], void), cast-from-var2735-to-var2259=([java.util.HashSet], java.util.Set), classes/-930696547=([cn.hutool.core.lang.ClassScanner], java.util.Set), ignoreLoadError/-930696547=([cn.hutool.core.lang.ClassScanner], boolean), classesOfLoadError/-930696547=([cn.hutool.core.lang.ClassScanner], java.util.Set), var1655_nullToEmpty/-379247643=([java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), packageName/-930696547=([cn.hutool.core.lang.ClassScanner], java.lang.String), var1655_addSuffixIfNot/-1841592187=([java.lang.CharSequence, java.lang.CharSequence], java.lang.String), packageNameWithDot/-930696547=([cn.hutool.core.lang.ClassScanner], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), packageDirName/-930696547=([cn.hutool.core.lang.ClassScanner], java.lang.String), packagePath/-930696547=([cn.hutool.core.lang.ClassScanner], java.lang.String), classFilter/-930696547=([cn.hutool.core.lang.ClassScanner], cn.hutool.core.lang.Filter), charset/-930696547=([cn.hutool.core.lang.ClassScanner], java.nio.charset.Charset)}
; {var2951=cn.hutool.core.lang.ClassScanner, var2575=r0, var2309=r8, var2804=null_type, var755=cn.hutool.core.lang.Filter, var658=r6, var2053=java.nio.charset.Charset, var2751=r7, var2238=java.lang.Object, var2735=java.util.HashSet, var2942=$r1, var2259=java.util.Set, var1231=$r2, var1655=cn.hutool.core.text.CharSequenceUtil, var1562=r9, var2537=$r3, var3395=java.io.File, var3654=$c0, var2723=$r4, var1981=$r5}
; {cn.hutool.core.lang.ClassScanner=var2951, r0=var2575, r8=var2309, null_type=var2804, cn.hutool.core.lang.Filter=var755, r6=var658, java.nio.charset.Charset=var2053, r7=var2751, java.lang.Object=var2238, java.util.HashSet=var2735, $r1=var2942, java.util.Set=var2259, $r2=var1231, cn.hutool.core.text.CharSequenceUtil=var1655, r9=var1562, $r3=var2537, java.io.File=var3395, $c0=var3654, $r4=var2723, $r5=var1981}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 2}
;stmts r0 := @this: cn.hutool.core.lang.ClassScanner;	r8 := @parameter0: java.lang.String;	r6 := @parameter1: cn.hutool.core.lang.Filter;	r7 := @parameter2: java.nio.charset.Charset;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.HashSet;	specialinvoke $r1.<java.util.HashSet: void <init>()>();	r0.<cn.hutool.core.lang.ClassScanner: java.util.Set classes> = $r1;	r0.<cn.hutool.core.lang.ClassScanner: boolean ignoreLoadError> = 0;	$r2 = new java.util.HashSet;	specialinvoke $r2.<java.util.HashSet: void <init>()>();	r0.<cn.hutool.core.lang.ClassScanner: java.util.Set classesOfLoadError> = $r2;	r9 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>(r8);	r0.<cn.hutool.core.lang.ClassScanner: java.lang.String packageName> = r9;	$r3 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addSuffixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r9, ".");	r0.<cn.hutool.core.lang.ClassScanner: java.lang.String packageNameWithDot> = $r3;	$c0 = <java.io.File: char separatorChar>;	$r4 = virtualinvoke r9.<java.lang.String: java.lang.String replace(char,char)>(46, $c0);	r0.<cn.hutool.core.lang.ClassScanner: java.lang.String packageDirName> = $r4;	$r5 = virtualinvoke r9.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	r0.<cn.hutool.core.lang.ClassScanner: java.lang.String packagePath> = $r5;	r0.<cn.hutool.core.lang.ClassScanner: cn.hutool.core.lang.Filter classFilter> = r6;	r0.<cn.hutool.core.lang.ClassScanner: java.nio.charset.Charset charset> = r7;	return
;block_num 1