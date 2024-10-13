(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var873 0)
(declare-sort var333 0)
(declare-sort var3146 0)
(declare-sort var3348 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var333_unqualifyEntityName/1243637081 (String) String)
(declare-fun var333_truncate/1761960102 (String Int) String)
(declare-fun toLowerCase/1946809429 (String var3146) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun var333_cleanAlias/520607906 (String) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var3348_isDigit/-731660569 (Int) Bool)
(declare-const null-String String)
(declare-const var3146-ROOT var3146)
(declare-const var357 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var357 null-String)))
(define-const var3621 String (var333_unqualifyEntityName/1243637081 var357)) ; Statement: $r1 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualifyEntityName(java.lang.String)>(r0) 
(define-const var3750 String (var333_truncate/1761960102 var3621 10)) ; Statement: $r3 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String truncate(java.lang.String,int)>($r1, 10) 
(define-const var885 var3146 var3146-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var177 String (toLowerCase/1946809429 var3750 var885)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(assert true)
(define-const var1567 String (replace/1524665721 var177 47 95)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(char,char)>(47, 95) 
(assert true)
(define-const var883 String (replace/1524665721 var1567 36 95)) ; Statement: r10 = virtualinvoke $r5.<java.lang.String: java.lang.String replace(char,char)>(36, 95) 
(define-const var3383 String (var333_cleanAlias/520607906 var883)) ; Statement: r11 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String cleanAlias(java.lang.String)>(r10) 
(assert true)
(define-const var3825 Int (length/-134980193 var3383)) ; Statement: $i0 = virtualinvoke r11.<java.lang.String: int length()>() 
(define-const var951 Int (- var3825 1)) ; Statement: $i1 = $i0 - 1 
(assert (not (and true (and (> (str.len var3383) var951) (<= 0 var951)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var333_unqualifyEntityName/1243637081=([java.lang.String], java.lang.String), var333_truncate/1761960102=([java.lang.String, int], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), var333_cleanAlias/520607906=([java.lang.String], java.lang.String), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), var3348_isDigit/-731660569=([char], boolean)}
; {var357=r0, var873=null_type, var333=org.hibernate.internal.util.StringHelper, var3621=$r1, var3750=$r3, var3146=java.util.Locale, var885=$r2, var177=$r4, var1567=$r5, var883=r10, var3383=r11, var3825=$i0, var951=$i1, var2496=$c2, var3348=java.lang.Character, var857=$z0}
; {r0=var357, null_type=var873, org.hibernate.internal.util.StringHelper=var333, $r1=var3621, $r3=var3750, java.util.Locale=var3146, $r2=var885, $r4=var177, $r5=var1567, r10=var883, r11=var3383, $i0=var3825, $i1=var951, $c2=var2496, java.lang.Character=var3348, $z0=var857}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 2,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualifyEntityName(java.lang.String)>(r0);	$r3 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String truncate(java.lang.String,int)>($r1, 10);	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(char,char)>(47, 95);	r10 = virtualinvoke $r5.<java.lang.String: java.lang.String replace(char,char)>(36, 95);	r11 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String cleanAlias(java.lang.String)>(r10);	$i0 = virtualinvoke r11.<java.lang.String: int length()>();	$i1 = $i0 - 1;	$c2 = virtualinvoke r11.<java.lang.String: char charAt(int)>($i1);	$z0 = staticinvoke <java.lang.Character: boolean isDigit(char)>($c2);	if $z0 == 0 goto return r11;	return r11
;block_num 2