(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1427 0)
(declare-sort var2644 0)
(declare-sort var3533 0)
(declare-sort var22 0)
(declare-sort var1958 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun next/-1212382432 (var2644) Int)
(declare-fun cast-from-var1427-to-var2644 (var1427) var2644)
(declare-fun var3533_isLetterOrDigit/927074608 (Int) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var22) String)
(declare-fun cast-from-String-to-var22 (String) var22)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun syntaxError/603127542 (var2644 String) var1958)
(declare-const null-var1427 var1427)
(declare-const null-Int Int)
(declare-const var2986 var1427) ; Statement: r1 := @this: cn.hutool.json.XMLTokener 
(assert (not (= var2986 null-var1427)))
(declare-const var2673 Int) ; Statement: c2 := @parameter0: char 
(assert (not (= var2673 null-Int)))
(define-const var135 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var135)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var135!1 String)
(assert (= var135!1 ""))
(assert true) ; Non Conditional
(assert true)
(define-const var315 Int (next/-1212382432 (cast-from-var1427-to-var2644 var2986))) ; Statement: $c1 = virtualinvoke r1.<cn.hutool.json.XMLTokener: char next()>() 
(define-const var3384 Bool (var3533_isLetterOrDigit/927074608 var315)) ; Statement: $z0 = staticinvoke <java.lang.Character: boolean isLetterOrDigit(char)>($c1) 
 ; Statement: if $z0 != 0 goto $c0 = staticinvoke <java.lang.Character: char toLowerCase(char)>($c1) 
(assert (not (not (= (ite var3384 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2992 Int (cast-from-Int-to-Int var315)) ; Statement: $i3 = (int) $c1 
 ; Statement: if $i3 != 35 goto $i4 = (int) $c1 
(assert (not (= var2992 35))) ; Cond: $i3 != 35 
(define-const var1004 Int (cast-from-Int-to-Int var315)) ; Statement: $i4 = (int) $c1 
 ; Statement: if $i4 != 59 goto $r10 = new java.lang.StringBuilder 
(assert (not (= var1004 59))) ; Cond: $i4 != 59 
(define-const var3078 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3078)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3078!1 String)
(assert (= var3078!1 ""))
(assert true)
(define-const var516 String (append/672562846 var3078!1 "Missing \u0027;\u0027 in XML entity: &")) ; Statement: $r3 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Missing \';\' in XML entity: &") 
(declare-const var3078!2 String)
(assert (= var3078!2 (str.++ var3078!1 "Missing \u0027;\u0027 in XML entity: &")))
(assert true)
(define-const var1085 String (append/-1031950772 var516 (cast-from-String-to-var22 var135!1))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9) 
(declare-const var516!1 String)
(assert (str.prefixof var516 var516!1))
(assert true)
(define-const var3216 String (toString/-2075883882 var1085)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3075 var1958 (syntaxError/603127542 (cast-from-var1427-to-var2644 var2986) var3216)) ; Statement: $r6 = virtualinvoke r1.<cn.hutool.json.XMLTokener: cn.hutool.json.JSONException syntaxError(java.lang.String)>($r5) 
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), next/-1212382432=([cn.hutool.json.JSONTokener], char), cast-from-var1427-to-var2644=([cn.hutool.json.XMLTokener], cn.hutool.json.JSONTokener), var3533_isLetterOrDigit/927074608=([char], boolean), cast-from-Int-to-Int=([char], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-String-to-var22=([java.lang.StringBuilder], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), syntaxError/603127542=([cn.hutool.json.JSONTokener, java.lang.String], cn.hutool.json.JSONException)}
; {var1427=cn.hutool.json.XMLTokener, var2986=r1, var2673=c2, var135=$r9, var2644=cn.hutool.json.JSONTokener, var315=$c1, var3533=java.lang.Character, var3384=$z0, var2992=$i3, var1004=$i4, var3078=$r10, var516=$r3, var22=java.lang.Object, var1085=$r4, var3216=$r5, var1958=cn.hutool.json.JSONException, var3075=$r6}
; {cn.hutool.json.XMLTokener=var1427, r1=var2986, c2=var2673, $r9=var135, cn.hutool.json.JSONTokener=var2644, $c1=var315, java.lang.Character=var3533, $z0=var3384, $i3=var2992, $i4=var1004, $r10=var3078, $r3=var516, java.lang.Object=var22, $r4=var1085, $r5=var3216, cn.hutool.json.JSONException=var1958, $r6=var3075}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.json.XMLTokener;	c2 := @parameter0: char;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$c1 = virtualinvoke r1.<cn.hutool.json.XMLTokener: char next()>();	$z0 = staticinvoke <java.lang.Character: boolean isLetterOrDigit(char)>($c1);	if $z0 != 0 goto $c0 = staticinvoke <java.lang.Character: char toLowerCase(char)>($c1);	$i3 = (int) $c1;	if $i3 != 35 goto $i4 = (int) $c1;	$i4 = (int) $c1;	if $i4 != 59 goto $r10 = new java.lang.StringBuilder;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Missing \';\' in XML entity: &");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r1.<cn.hutool.json.XMLTokener: cn.hutool.json.JSONException syntaxError(java.lang.String)>($r5);	throw $r6
;block_num 5