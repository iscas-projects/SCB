(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var883 0)
(declare-sort var1845 0)
(declare-sort var997 0)
(declare-sort var2057 0)
(declare-sort var2254 0)
(declare-sort var2132 0)
(declare-sort var3171 0)
(declare-sort var2075 0)
(declare-sort var3799 0)
(declare-sort var74 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2057) void)
(declare-fun cast-from-var883-to-var2057 (var883) var2057)
(declare-fun run/797003047 (var883) var1845)
(declare-fun parent/797003047 (var883) var997)
(declare-fun var1845_getDrawingArray/-61373730 (var1845) (Array Int var2254))
(declare-fun getLength-Arr-var2254-1 ((Array Int var2254)) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2132-init () var2132)
(declare-fun <init>/-325640736 (var2132) void)
(declare-fun var1845_getPictArray/1867655378 (var1845) (Array Int var3171))
(declare-fun var3799_asList/1779083644 ((Array Int var2057)) var2075)
(declare-fun cast-from-__Array__Int__var3171__-to-__Array__Int__var2057__ ((Array Int var3171)) (Array Int var2057))
(declare-fun var2075_addAll/-525367613 (var2075 var74) Bool)
(declare-fun cast-from-var2132-to-var2075 (var2132) var2075)
(declare-fun cast-from-var2075-to-var74 (var2075) var74)
(declare-fun cast-from-__Array__Int__var2254__-to-__Array__Int__var2057__ ((Array Int var2254)) (Array Int var2057))
(declare-fun var2075_iterator/-912451715 (var2075) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun pictureText/797003047 (var883) String)
(declare-fun pictures/797003047 (var883) var2075)
(declare-const null-var883 var883)
(declare-const null-var1845 var1845)
(declare-const null-var997 var997)
(declare-const var344 var883) ; Statement: r0 := @this: org.apache.poi.xwpf.usermodel.XWPFRun 
(assert (not (= var344 null-var883)))
(declare-const var1914 var1845) ; Statement: r1 := @parameter0: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR 
(assert (not (= var1914 null-var1845)))
(declare-const var2121 var997) ; Statement: r2 := @parameter1: org.apache.poi.xwpf.usermodel.IRunBody 
(assert (not (= var2121 null-var997)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var883-to-var2057 var344))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var344!1 var883)
(declare-const var344!2 var883)
(assert (not (= var344!2 null-var883)))
(assert (= (run/797003047 var344!2) var1914)) ; Statement: r0.<org.apache.poi.xwpf.usermodel.XWPFRun: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR run> = r1 
(declare-const var344!3 var883)
(assert (not (= var344!3 null-var883)))
(assert (= (parent/797003047 var344!3) var2121)) ; Statement: r0.<org.apache.poi.xwpf.usermodel.XWPFRun: org.apache.poi.xwpf.usermodel.IRunBody parent> = r2 
(define-const var1209 (Array Int var2254) (var1845_getDrawingArray/-61373730 var1914)) ; Statement: r31 = interfaceinvoke r1.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing[] getDrawingArray()>() 
(define-const var1867 Int (getLength-Arr-var2254-1 var1209)) ; Statement: i4 = lengthof r31 
(define-const var2402 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i4 goto $r3 = new java.lang.StringBuilder 
(assert (>= var2402 var1867)) ; Cond: i5 >= i4 
(define-const var2013 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2013)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2013!1 String)
(assert (= var2013!1 ""))
(define-const var1732 var2132 var2132-init) ; Statement: $r4 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1732)) ; Statement: specialinvoke $r4.<java.util.ArrayList: void <init>()>() 

(declare-const var1732!1 var2132)
(define-const var3589 (Array Int var3171) (var1845_getPictArray/1867655378 var1914)) ; Statement: $r5 = interfaceinvoke r1.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture[] getPictArray()>() 
(define-const var3926 var2075 (var3799_asList/1779083644 (cast-from-__Array__Int__var3171__-to-__Array__Int__var2057__ var3589))) ; Statement: $r6 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>($r5) 
;(assert (var2075_addAll/-525367613 (cast-from-var2132-to-var2075 var1732!1) (cast-from-var2075-to-var74 var3926))) ; Statement: interfaceinvoke $r4.<java.util.List: boolean addAll(java.util.Collection)>($r6) 

(declare-const var1732!2 var2132)
(declare-const var3926!1 var2075)
(define-const var3313 (Array Int var2254) (var1845_getDrawingArray/-61373730 var1914)) ; Statement: $r7 = interfaceinvoke r1.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing[] getDrawingArray()>() 
(define-const var2503 var2075 (var3799_asList/1779083644 (cast-from-__Array__Int__var2254__-to-__Array__Int__var2057__ var3313))) ; Statement: $r8 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>($r7) 
;(assert (var2075_addAll/-525367613 (cast-from-var2132-to-var2075 var1732!2) (cast-from-var2075-to-var74 var2503))) ; Statement: interfaceinvoke $r4.<java.util.List: boolean addAll(java.util.Collection)>($r8) 

(declare-const var1732!3 var2132)
(declare-const var2503!1 var2075)
(define-const var3150 Iterator (var2075_iterator/-912451715 (cast-from-var2132-to-var2075 var1732!3))) ; Statement: r37 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3259 Bool (Iterator_hasNext/-1669924200 var3150)) ; Statement: $z0 = interfaceinvoke r37.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r9 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3259 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var120 String (toString/-2075883882 var2013!1)) ; Statement: $r9 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var344!4 var883)
(assert (not (= var344!4 null-var883)))
(assert (= (pictureText/797003047 var344!4) var120)) ; Statement: r0.<org.apache.poi.xwpf.usermodel.XWPFRun: java.lang.String pictureText> = $r9 
(define-const var1692 var2132 var2132-init) ; Statement: $r10 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1692)) ; Statement: specialinvoke $r10.<java.util.ArrayList: void <init>()>() 

(declare-const var1692!1 var2132)
(declare-const var344!5 var883)
(assert (not (= var344!5 null-var883)))
(assert (= (pictures/797003047 var344!5) (cast-from-var2132-to-var2075 var1692!1))) ; Statement: r0.<org.apache.poi.xwpf.usermodel.XWPFRun: java.util.List pictures> = $r10 
(define-const var2179 Iterator (var2075_iterator/-912451715 (cast-from-var2132-to-var2075 var1732!3))) ; Statement: r40 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var895 Bool (Iterator_hasNext/-1669924200 var2179)) ; Statement: $z1 = interfaceinvoke r40.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var895 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var883-to-var2057=([org.apache.poi.xwpf.usermodel.XWPFRun], java.lang.Object), run/797003047=([org.apache.poi.xwpf.usermodel.XWPFRun], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR), parent/797003047=([org.apache.poi.xwpf.usermodel.XWPFRun], org.apache.poi.xwpf.usermodel.IRunBody), var1845_getDrawingArray/-61373730=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing[]), getLength-Arr-var2254-1=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing[]], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2132-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), var1845_getPictArray/1867655378=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture[]), var3799_asList/1779083644=([java.lang.Object[]], java.util.List), cast-from-__Array__Int__var3171__-to-__Array__Int__var2057__=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture[]], java.lang.Object[]), var2075_addAll/-525367613=([java.util.List, java.util.Collection], boolean), cast-from-var2132-to-var2075=([java.util.ArrayList], java.util.List), cast-from-var2075-to-var74=([java.util.List], java.util.Collection), cast-from-__Array__Int__var2254__-to-__Array__Int__var2057__=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing[]], java.lang.Object[]), var2075_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), pictureText/797003047=([org.apache.poi.xwpf.usermodel.XWPFRun], java.lang.String), pictures/797003047=([org.apache.poi.xwpf.usermodel.XWPFRun], java.util.List)}
; {var883=org.apache.poi.xwpf.usermodel.XWPFRun, var344=r0, var1845=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR, var1914=r1, var997=org.apache.poi.xwpf.usermodel.IRunBody, var2121=r2, var2057=java.lang.Object, var2254=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing, var1209=r31, var1867=i4, var2402=i5, var2013=$r3, var2132=java.util.ArrayList, var1732=$r4, var3171=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture, var3589=$r5, var2075=java.util.List, var3799=java.util.Arrays, var3926=$r6, var74=java.util.Collection, var3313=$r7, var2503=$r8, var3150=r37, var3259=$z0, var120=$r9, var1692=$r10, var2179=r40, var895=$z1}
; {org.apache.poi.xwpf.usermodel.XWPFRun=var883, r0=var344, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR=var1845, r1=var1914, org.apache.poi.xwpf.usermodel.IRunBody=var997, r2=var2121, java.lang.Object=var2057, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing=var2254, r31=var1209, i4=var1867, i5=var2402, $r3=var2013, java.util.ArrayList=var2132, $r4=var1732, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture=var3171, $r5=var3589, java.util.List=var2075, java.util.Arrays=var3799, $r6=var3926, java.util.Collection=var74, $r7=var3313, $r8=var2503, r37=var3150, $z0=var3259, $r9=var120, $r10=var1692, r40=var2179, $z1=var895}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xwpf.usermodel.XWPFRun;	r1 := @parameter0: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR;	r2 := @parameter1: org.apache.poi.xwpf.usermodel.IRunBody;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.apache.poi.xwpf.usermodel.XWPFRun: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR run> = r1;	r0.<org.apache.poi.xwpf.usermodel.XWPFRun: org.apache.poi.xwpf.usermodel.IRunBody parent> = r2;	r31 = interfaceinvoke r1.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing[] getDrawingArray()>();	i4 = lengthof r31;	i5 = 0;	if i5 >= i4 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = new java.util.ArrayList;	specialinvoke $r4.<java.util.ArrayList: void <init>()>();	$r5 = interfaceinvoke r1.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture[] getPictArray()>();	$r6 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>($r5);	interfaceinvoke $r4.<java.util.List: boolean addAll(java.util.Collection)>($r6);	$r7 = interfaceinvoke r1.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing[] getDrawingArray()>();	$r8 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>($r7);	interfaceinvoke $r4.<java.util.List: boolean addAll(java.util.Collection)>($r8);	r37 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r37.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r9 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.apache.poi.xwpf.usermodel.XWPFRun: java.lang.String pictureText> = $r9;	$r10 = new java.util.ArrayList;	specialinvoke $r10.<java.util.ArrayList: void <init>()>();	r0.<org.apache.poi.xwpf.usermodel.XWPFRun: java.util.List pictures> = $r10;	r40 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>();	$z1 = interfaceinvoke r40.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto return;	return
;block_num 7