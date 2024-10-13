(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var908 0)
(declare-sort var3562 0)
(declare-sort var1205 0)
(declare-sort var736 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3562_unqualifyEntityName/1243637081 (String) String)
(declare-fun var3562_truncate/1761960102 (String Int) String)
(declare-fun toLowerCase/1946809429 (String var1205) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun var3562_cleanAlias/520607906 (String) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var736_isDigit/-731660569 (Int) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var1205-ROOT var1205)
(declare-const var2855 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2855 null-String)))
(define-const var2701 String (var3562_unqualifyEntityName/1243637081 var2855)) ; Statement: $r1 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualifyEntityName(java.lang.String)>(r0) 
(define-const var590 String (var3562_truncate/1761960102 var2701 10)) ; Statement: $r3 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String truncate(java.lang.String,int)>($r1, 10) 
(define-const var3014 var1205 var1205-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var220 String (toLowerCase/1946809429 var590 var3014)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(assert true)
(define-const var1805 String (replace/1524665721 var220 47 95)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(char,char)>(47, 95) 
(assert true)
(define-const var877 String (replace/1524665721 var1805 36 95)) ; Statement: r10 = virtualinvoke $r5.<java.lang.String: java.lang.String replace(char,char)>(36, 95) 
(define-const var3934 String (var3562_cleanAlias/520607906 var877)) ; Statement: r11 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String cleanAlias(java.lang.String)>(r10) 
(assert true)
(define-const var2290 Int (length/-134980193 var3934)) ; Statement: $i0 = virtualinvoke r11.<java.lang.String: int length()>() 
(define-const var3420 Int (- var2290 1)) ; Statement: $i1 = $i0 - 1 
(assert (not (and true (and (> (str.len var3934) var3420) (<= 0 var3420)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var3562_unqualifyEntityName/1243637081=([java.lang.String], java.lang.String), var3562_truncate/1761960102=([java.lang.String, int], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), var3562_cleanAlias/520607906=([java.lang.String], java.lang.String), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), var736_isDigit/-731660569=([char], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2855=r0, var908=null_type, var3562=org.hibernate.internal.util.StringHelper, var2701=$r1, var590=$r3, var1205=java.util.Locale, var3014=$r2, var220=$r4, var1805=$r5, var877=r10, var3934=r11, var2290=$i0, var3420=$i1, var3126=$c2, var736=java.lang.Character, var1530=$z0, var244=$r6, var716=$r7, var2874=$r8, var1488=$r9}
; {r0=var2855, null_type=var908, org.hibernate.internal.util.StringHelper=var3562, $r1=var2701, $r3=var590, java.util.Locale=var1205, $r2=var3014, $r4=var220, $r5=var1805, r10=var877, r11=var3934, $i0=var2290, $i1=var3420, $c2=var3126, java.lang.Character=var736, $z0=var1530, $r6=var244, $r7=var716, $r8=var2874, $r9=var1488}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 2,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualifyEntityName(java.lang.String)>(r0);	$r3 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String truncate(java.lang.String,int)>($r1, 10);	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(char,char)>(47, 95);	r10 = virtualinvoke $r5.<java.lang.String: java.lang.String replace(char,char)>(36, 95);	r11 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String cleanAlias(java.lang.String)>(r10);	$i0 = virtualinvoke r11.<java.lang.String: int length()>();	$i1 = $i0 - 1;	$c2 = virtualinvoke r11.<java.lang.String: char charAt(int)>($i1);	$z0 = staticinvoke <java.lang.Character: boolean isDigit(char)>($c2);	if $z0 == 0 goto return r11;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("x");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 2