(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3127 0)
(declare-sort var3143 0)
(declare-sort var3937 0)
(declare-sort var1302 0)
(declare-sort var1905 0)
(declare-sort var3021 0)
(declare-sort var1874 0)
(declare-sort var2311 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1180346878 (var3937 String Int) void)
(declare-fun cast-from-var3127-to-var3937 (var3127) var3937)
(declare-fun formatLen/1680794720 (var3127) Int)
(declare-fun var1302-init () var1302)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun <init>/-1907538146 (var1302 String var1905) void)
(declare-fun format/1680794720 (var3127) var1302)
(declare-fun setTimeZone/1163125483 (var2311 var3021) void)
(declare-fun cast-from-var1302-to-var2311 (var1302) var2311)
(declare-const null-var3127 var3127)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1905-ROOT var1905)
(declare-const var1874-GMT var3021)
(declare-const var3260 var3127) ; Statement: r0 := @this: org.apache.lucene.document.DateTools$Resolution 
(assert (not (= var3260 null-var3127)))
(declare-const var3823 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3823 null-String)))
(declare-const var3649 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3649 null-Int)))
(declare-const var2144 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2144 null-Int)))
(assert true)
;(assert (<init>/1180346878 (cast-from-var3127-to-var3937 var3260) var3823 var3649)) ; Statement: specialinvoke r0.<java.lang.Enum: void <init>(java.lang.String,int)>(r1, i0) 

(declare-const var3260!1 var3127)
(declare-const var3823!1 String)
(declare-const var3649!1 Int)
(declare-const var3260!2 var3127)
(assert (not (= var3260!2 null-var3127)))
(assert (= (formatLen/1680794720 var3260!2) var2144)) ; Statement: r0.<org.apache.lucene.document.DateTools$Resolution: int formatLen> = i1 
(define-const var3456 var1302 var1302-init) ; Statement: $r2 = new java.text.SimpleDateFormat 
(define-const var3041 String "yyyyMMddHHmmssSSS") ; Statement: $r3 = "yyyyMMddHHmmssSSS" 
(assert (and true (and (>= 0 0) (>= (str.len var3041) var2144) (>= var2144 0))))
(define-const var469 String (substring/-1240304868 var3041 0 var2144)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.String: java.lang.String substring(int,int)>(0, i1) 
(define-const var1025 var1905 var1905-ROOT) ; Statement: $r4 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
;(assert (<init>/-1907538146 var3456 var469 var1025)) ; Statement: specialinvoke $r2.<java.text.SimpleDateFormat: void <init>(java.lang.String,java.util.Locale)>($r5, $r4) 

(declare-const var3456!1 var1302)
(declare-const var469!1 String)
(declare-const var1025!1 var1905)
(declare-const var3260!3 var3127)
(assert (not (= var3260!3 null-var3127)))
(assert (= (format/1680794720 var3260!3) var3456!1)) ; Statement: r0.<org.apache.lucene.document.DateTools$Resolution: java.text.SimpleDateFormat format> = $r2 
(define-const var1473 var1302 (format/1680794720 var3260!3)) ; Statement: $r7 = r0.<org.apache.lucene.document.DateTools$Resolution: java.text.SimpleDateFormat format> 
(define-const var307 var3021 var1874-GMT) ; Statement: $r6 = <org.apache.lucene.document.DateTools: java.util.TimeZone GMT> 
(assert true)
;(assert (setTimeZone/1163125483 (cast-from-var1302-to-var2311 var1473) var307)) ; Statement: virtualinvoke $r7.<java.text.SimpleDateFormat: void setTimeZone(java.util.TimeZone)>($r6) 

(declare-const var1473!1 var1302)
(declare-const var307!1 var3021)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1180346878=([java.lang.Enum, java.lang.String, int], void), cast-from-var3127-to-var3937=([org.apache.lucene.document.DateTools$Resolution], java.lang.Enum), formatLen/1680794720=([org.apache.lucene.document.DateTools$Resolution], int), var1302-init=([], java.text.SimpleDateFormat), substring/-1240304868=([java.lang.String, int, int], java.lang.String), <init>/-1907538146=([java.text.SimpleDateFormat, java.lang.String, java.util.Locale], void), format/1680794720=([org.apache.lucene.document.DateTools$Resolution], java.text.SimpleDateFormat), setTimeZone/1163125483=([java.text.DateFormat, java.util.TimeZone], void), cast-from-var1302-to-var2311=([java.text.SimpleDateFormat], java.text.DateFormat)}
; {var3127=org.apache.lucene.document.DateTools$Resolution, var3260=r0, var3823=r1, var3143=null_type, var3649=i0, var2144=i1, var3937=java.lang.Enum, var1302=java.text.SimpleDateFormat, var3456=$r2, var3041=$r3, var469=$r5, var1905=java.util.Locale, var1025=$r4, var1473=$r7, var3021=java.util.TimeZone, var1874=org.apache.lucene.document.DateTools, var307=$r6, var2311=java.text.DateFormat}
; {org.apache.lucene.document.DateTools$Resolution=var3127, r0=var3260, r1=var3823, null_type=var3143, i0=var3649, i1=var2144, java.lang.Enum=var3937, java.text.SimpleDateFormat=var1302, $r2=var3456, $r3=var3041, $r5=var469, java.util.Locale=var1905, $r4=var1025, $r7=var1473, java.util.TimeZone=var3021, org.apache.lucene.document.DateTools=var1874, $r6=var307, java.text.DateFormat=var2311}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: org.apache.lucene.document.DateTools$Resolution;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	specialinvoke r0.<java.lang.Enum: void <init>(java.lang.String,int)>(r1, i0);	r0.<org.apache.lucene.document.DateTools$Resolution: int formatLen> = i1;	$r2 = new java.text.SimpleDateFormat;	$r3 = "yyyyMMddHHmmssSSS";	$r5 = virtualinvoke $r3.<java.lang.String: java.lang.String substring(int,int)>(0, i1);	$r4 = <java.util.Locale: java.util.Locale ROOT>;	specialinvoke $r2.<java.text.SimpleDateFormat: void <init>(java.lang.String,java.util.Locale)>($r5, $r4);	r0.<org.apache.lucene.document.DateTools$Resolution: java.text.SimpleDateFormat format> = $r2;	$r7 = r0.<org.apache.lucene.document.DateTools$Resolution: java.text.SimpleDateFormat format>;	$r6 = <org.apache.lucene.document.DateTools: java.util.TimeZone GMT>;	virtualinvoke $r7.<java.text.SimpleDateFormat: void setTimeZone(java.util.TimeZone)>($r6);	return
;block_num 1