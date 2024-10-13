(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var485 0)
(declare-sort var2026 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2026-init () var2026)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var2026 String) void)
(declare-const null-String String)
(declare-const var374 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var374 null-String)))
(define-const var2227 Int 0) ; Statement: i0 = 0 
(define-const var1440 Int 0) ; Statement: i1 = 0 
(assert (and true (and (> (str.len var374) 0) (<= 0 0))))
(define-const var1167 Int (charAt/698050440 var374 0)) ; Statement: c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert true) ; Non Conditional
(define-const var2471 Int (cast-from-Int-to-Int var1167)) ; Statement: $i7 = (int) c2 
 ; Statement: if $i7 != 91 goto $i8 = (int) c2 
(assert (not (= var2471 91))) ; Cond: $i7 != 91 
(define-const var1029 Int (cast-from-Int-to-Int var1167)) ; Statement: $i8 = (int) c2 
 ; Statement: if $i8 != 76 goto $i9 = (int) c2 
(assert (not (not (= var1029 76)))) ; Negate: Cond: $i8 != 76  
(define-const var184 Int (+ var1440 1)) ; Statement: i3 = i1 + 1 
(assert true)
(define-const var635 Int (indexOf/1426977840 var374 59 var1440)) ; Statement: i4 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(59, i1) 
(assert (and true (and (>= var184 0) (>= (str.len var374) var635) (>= var635 var184))))
(define-const var1032 String (substring/-1240304868 var374 var184 var635)) ; Statement: $r13 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i3, i4) 
(assert true)
(define-const var1197 String (replace/1524665721 var1032 47 46)) ; Statement: r14 = virtualinvoke $r13.<java.lang.String: java.lang.String replace(char,char)>(47, 46) 
(define-const var1440!1 Int var635) ; Statement: i1 = i4 
 ; Statement: goto [?= $i5 = i1 + 1] 
(assert true) ; Non Conditional
(define-const var122 Int (+ var1440!1 1)) ; Statement: $i5 = i1 + 1 
(assert true)
(define-const var594 Int (length/-134980193 var374)) ; Statement: $i6 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i5 == $i6 goto (branch) 
(assert (not (= var122 var594))) ; Negate: Cond: $i5 == $i6  
(define-const var917 var2026 var2026-init) ; Statement: $r18 = new java.lang.RuntimeException 
(define-const var3768 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3768)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3768!1 String)
(assert (= var3768!1 ""))
(assert true)
(define-const var2197 String (append/672562846 var3768!1 "multiple descriptors?: ")) ; Statement: $r10 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("multiple descriptors?: ") 
(declare-const var3768!2 String)
(assert (= var3768!2 (str.++ var3768!1 "multiple descriptors?: ")))
(assert true)
(define-const var3038 String (append/672562846 var2197 var374)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2197!1 String)
(assert (= var2197!1 (str.++ var2197 var374)))
(assert true)
(define-const var1035 String (toString/-2075883882 var3038)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var917 var1035)) ; Statement: specialinvoke $r18.<java.lang.RuntimeException: void <init>(java.lang.String)>($r12) 

(declare-const var917!1 var2026)
(declare-const var1035!1 String)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), indexOf/1426977840=([java.lang.String, int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), length/-134980193=([java.lang.String], int), var2026-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var374=r0, var485=null_type, var2227=i0, var1440=i1, var1167=c2, var2471=$i7, var1029=$i8, var184=i3, var635=i4, var1032=$r13, var1197=r14, var122=$i5, var594=$i6, var2026=java.lang.RuntimeException, var917=$r18, var3768=$r17, var2197=$r10, var3038=$r11, var1035=$r12}
; {r0=var374, null_type=var485, i0=var2227, i1=var1440, c2=var1167, $i7=var2471, $i8=var1029, i3=var184, i4=var635, $r13=var1032, r14=var1197, $i5=var122, $i6=var594, java.lang.RuntimeException=var2026, $r18=var917, $r17=var3768, $r10=var2197, $r11=var3038, $r12=var1035}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int indexOf(int,int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = 0;	i1 = 0;	c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i7 = (int) c2;	if $i7 != 91 goto $i8 = (int) c2;	$i8 = (int) c2;	if $i8 != 76 goto $i9 = (int) c2;	i3 = i1 + 1;	i4 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(59, i1);	$r13 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i3, i4);	r14 = virtualinvoke $r13.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	i1 = i4;	goto [?= $i5 = i1 + 1];	$i5 = i1 + 1;	$i6 = virtualinvoke r0.<java.lang.String: int length()>();	if $i5 == $i6 goto (branch);	$r18 = new java.lang.RuntimeException;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("multiple descriptors?: ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<java.lang.RuntimeException: void <init>(java.lang.String)>($r12);	throw $r18
;block_num 6