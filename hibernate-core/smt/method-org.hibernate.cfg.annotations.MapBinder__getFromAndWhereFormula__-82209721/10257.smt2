(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2774 0)
(declare-sort var368 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun length/-171891354 (String) Int)
(declare-fun substring/235658101 (String Int Int) String)
(declare-const null-var2774 var2774)
(declare-const null-String String)
(declare-const null-Iterator Iterator)
(declare-const var2795 var2774) ; Statement: r20 := @this: org.hibernate.cfg.annotations.MapBinder 
(assert (not (= var2795 null-var2774)))
(declare-const var396 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var396 null-String)))
(declare-const var375 Iterator) ; Statement: r6 := @parameter1: java.util.Iterator 
(assert (not (= var375 null-Iterator)))
(declare-const var2936 Iterator) ; Statement: r10 := @parameter2: java.util.Iterator 
(assert (not (= var2936 null-Iterator)))
(define-const var3234 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3234 " from ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>(" from ") 
(declare-const var3234!1 String)
(assert (= var3234!1 " from "))
(assert true)
(define-const var441 String (append/672562846 var3234!1 var396)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3234!2 String)
(assert (= var3234!2 (str.++ var3234!1 var396)))
(assert true)
(define-const var2207 String (append/672562846 var441 " ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var441!1 String)
(assert (= var441!1 (str.++ var441 " ")))
(assert true)
(define-const var1184 String (append/672562846 var2207 "$alias$")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$alias$") 
(declare-const var2207!1 String)
(assert (= var2207!1 (str.++ var2207 "$alias$")))
(assert true)
(define-const var2457 String (append/672562846 var1184 " where ")) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ") 
(declare-const var1184!1 String)
(assert (= var1184!1 (str.++ var1184 " where ")))
(assert true) ; Non Conditional
(define-const var230 Bool (Iterator_hasNext/-1669924200 var375)) ; Statement: $z0 = interfaceinvoke r6.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r5.<java.lang.StringBuilder: int length()>() 
(assert (= (ite var230 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var96 Int (length/-171891354 var2457)) ; Statement: $i0 = virtualinvoke r5.<java.lang.StringBuilder: int length()>() 
(define-const var2908 Int (- var96 5)) ; Statement: $i1 = $i0 - 5 
(assert true)
(define-const var3653 String (substring/235658101 var2457 0 var2908)) ; Statement: $r7 = virtualinvoke r5.<java.lang.StringBuilder: java.lang.String substring(int,int)>(0, $i1) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), length/-171891354=([java.lang.StringBuilder], int), substring/235658101=([java.lang.StringBuilder, int, int], java.lang.String)}
; {var2774=org.hibernate.cfg.annotations.MapBinder, var2795=r20, var396=r1, var368=null_type, var375=r6, var2936=r10, var3234=$r0, var441=$r2, var2207=$r3, var1184=$r4, var2457=r5, var230=$z0, var96=$i0, var2908=$i1, var3653=$r7}
; {org.hibernate.cfg.annotations.MapBinder=var2774, r20=var2795, r1=var396, null_type=var368, r6=var375, r10=var2936, $r0=var3234, $r2=var441, $r3=var2207, $r4=var1184, r5=var2457, $z0=var230, $i0=var96, $i1=var2908, $r7=var3653}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String substring(int,int)>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.String substring(int,int)>": 1}
;stmts r20 := @this: org.hibernate.cfg.annotations.MapBinder;	r1 := @parameter0: java.lang.String;	r6 := @parameter1: java.util.Iterator;	r10 := @parameter2: java.util.Iterator;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>(" from ");	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$alias$");	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ");	$z0 = interfaceinvoke r6.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $i0 = virtualinvoke r5.<java.lang.StringBuilder: int length()>();	$i0 = virtualinvoke r5.<java.lang.StringBuilder: int length()>();	$i1 = $i0 - 5;	$r7 = virtualinvoke r5.<java.lang.StringBuilder: java.lang.String substring(int,int)>(0, $i1);	return $r7
;block_num 3