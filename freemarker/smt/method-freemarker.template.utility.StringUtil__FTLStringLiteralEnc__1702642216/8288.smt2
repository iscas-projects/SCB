(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3002 0)
(declare-sort var2529 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2529-init () var2529)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2529 String) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var1475 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1475 null-String)))
(declare-const var1224 Int) ; Statement: c1 := @parameter1: char 
(assert (not (= var1224 null-Int)))
(declare-const var3471 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3471 null-Bool)))
(assert true)
(define-const var245 Int (length/-134980193 var1475)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if c1 != 0 goto $i26 = (int) c1 
(assert (not (= var1224 0))) ; Cond: c1 != 0 
(define-const var3846 Int (cast-from-Int-to-Int var1224)) ; Statement: $i26 = (int) c1 
 ; Statement: if $i26 != 34 goto $i27 = (int) c1 
(assert (not (= var3846 34))) ; Cond: $i26 != 34 
(define-const var3270 Int (cast-from-Int-to-Int var1224)) ; Statement: $i27 = (int) c1 
 ; Statement: if $i27 != 39 goto $r20 = new java.lang.IllegalArgumentException 
(assert (not (= var3270 39))) ; Cond: $i27 != 39 
(define-const var1982 var2529 var2529-init) ; Statement: $r20 = new java.lang.IllegalArgumentException 
(define-const var1212 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1212)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1212!1 String)
(assert (= var1212!1 ""))
(assert true)
(define-const var1332 String (append/672562846 var1212!1 "Unsupported quotation character: ")) ; Statement: $r3 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported quotation character: ") 
(declare-const var1212!2 String)
(assert (= var1212!2 (str.++ var1212!1 "Unsupported quotation character: ")))
(assert true)
(define-const var1511 String (append/-1166366385 var1332 var1224)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c1) 
(declare-const var1332!1 String)
(assert (str.prefixof var1332 var1332!1))
(assert true)
(define-const var3745 String (toString/-2075883882 var1511)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1982 var3745)) ; Statement: specialinvoke $r20.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var1982!1 var2529)
(declare-const var3745!1 String)
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([char], int), var2529-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1475=r0, var3002=null_type, var1224=c1, var3471=z0, var245=i0, var3846=$i26, var3270=$i27, var2529=java.lang.IllegalArgumentException, var1982=$r20, var1212=$r19, var1332=$r3, var1511=$r4, var3745=$r5}
; {r0=var1475, null_type=var3002, c1=var1224, z0=var3471, i0=var245, $i26=var3846, $i27=var3270, java.lang.IllegalArgumentException=var2529, $r20=var1982, $r19=var1212, $r3=var1332, $r4=var1511, $r5=var3745}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	c1 := @parameter1: char;	z0 := @parameter2: boolean;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if c1 != 0 goto $i26 = (int) c1;	$i26 = (int) c1;	if $i26 != 34 goto $i27 = (int) c1;	$i27 = (int) c1;	if $i27 != 39 goto $r20 = new java.lang.IllegalArgumentException;	$r20 = new java.lang.IllegalArgumentException;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported quotation character: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r20.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r20
;block_num 4