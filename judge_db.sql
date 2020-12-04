-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th10 27, 2020 lúc 02:15 PM
-- Phiên bản máy phục vụ: 5.7.32-0ubuntu0.18.04.1
-- Phiên bản PHP: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `judge_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `problem`
--

CREATE TABLE `problem` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `statement` varchar(1000) COLLATE utf8_vietnamese_ci NOT NULL,
  `solution` varchar(1000) COLLATE utf8_vietnamese_ci NOT NULL,
  `numSolved` int(11) NOT NULL,
  `testPath` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `timeLimit` int(11) NOT NULL,
  `memLimit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `problem`
--

INSERT INTO `problem` (`id`, `name`, `statement`, `solution`, `numSolved`, `testPath`, `timeLimit`, `memLimit`) VALUES
(1, 'bài 1', 'a + b bằng mấy', '#include <iostream>\n\nusing namespace std;\n\nint main(){\n	int a, b;\n	cin >> a >> b;\n	cout << a * b + 1;\n	return 0;\n}\n', 123, '/home/OnlineJudgeSystem/zipped.zip', 2, 10000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `problem_submission`
--

CREATE TABLE `problem_submission` (
  `id` int(11) NOT NULL,
  `id_problem` int(11) NOT NULL,
  `id_submission` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `problem_submission`
--

INSERT INTO `problem_submission` (`id`, `id_problem`, `id_submission`) VALUES
(427, 1, 453),
(428, 1, 454),
(429, 1, 455),
(430, 1, 456),
(431, 1, 457),
(432, 1, 458),
(433, 1, 459),
(434, 1, 460),
(435, 1, 461),
(436, 1, 462),
(437, 1, 463),
(438, 1, 464),
(439, 1, 465),
(440, 1, 466),
(441, 1, 467),
(442, 1, 468),
(443, 1, 469),
(444, 1, 470),
(445, 1, 471),
(446, 1, 472),
(447, 1, 473),
(448, 1, 474),
(449, 1, 475),
(450, 1, 476),
(451, 1, 477),
(452, 1, 478),
(453, 1, 479),
(454, 1, 480),
(455, 1, 481),
(456, 1, 482),
(457, 1, 483),
(458, 1, 484),
(459, 1, 485),
(460, 1, 486);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `submission`
--

CREATE TABLE `submission` (
  `id` int(11) NOT NULL,
  `submissionCode` varchar(10000) COLLATE utf8_vietnamese_ci NOT NULL,
  `judgeStatus` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT 'QUEUE',
  `judgeReport` json DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '1',
  `judge_core_errors` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `submission`
--

INSERT INTO `submission` (`id`, `submissionCode`, `judgeStatus`, `judgeReport`, `user_id`, `judge_core_errors`) VALUES
(453, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'QUEUE', NULL, 1, NULL),
(454, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'FAIL', '{\"tests\": [{\"time\": \"0.177\", \"memory\": \"34152\", \"exitcode\": \"1\", \"judgeVerdict\": null}, {\"time\": \"0.172\", \"memory\": \"34152\", \"exitcode\": \"1\", \"judgeVerdict\": null}, {\"time\": \"0.174\", \"memory\": \"34152\", \"exitcode\": \"1\", \"judgeVerdict\": null}, {\"time\": \"0.195\", \"memory\": \"34152\", \"exitcode\": \"1\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"2.068\", \"memory\": \"34152\", \"status\": null, \"message\": null, \"exitcode\": null, \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, 'java.lang.NullPointerException'),
(455, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'FAIL', '{\"tests\": [], \"compile\": {\"time\": \"2.029\", \"memory\": \"35536\", \"status\": null, \"message\": null, \"exitcode\": null, \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, 'java.lang.NumberFormatException: null'),
(456, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'FAIL', '{\"tests\": [{\"time\": \"2.061\", \"memory\": \"33520\", \"exitcode\": null, \"judgeVerdict\": \"TLE\"}, {\"time\": \"0.188\", \"memory\": \"33180\", \"exitcode\": \"1\", \"judgeVerdict\": null}, {\"time\": \"0.183\", \"memory\": \"33180\", \"exitcode\": \"1\", \"judgeVerdict\": null}, {\"time\": \"0.148\", \"memory\": \"33180\", \"exitcode\": \"1\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"2.022\", \"memory\": \"33180\", \"status\": null, \"message\": null, \"exitcode\": null, \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, 'java.lang.NullPointerException'),
(457, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'FAIL', '{\"tests\": [{\"time\": \"0.177\", \"memory\": \"34112\", \"exitcode\": \"1\", \"judgeVerdict\": null}, {\"time\": \"0.173\", \"memory\": \"34112\", \"exitcode\": \"1\", \"judgeVerdict\": null}, {\"time\": \"0.177\", \"memory\": \"34112\", \"exitcode\": \"1\", \"judgeVerdict\": null}, {\"time\": \"0.146\", \"memory\": \"34112\", \"exitcode\": \"1\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"2.012\", \"memory\": \"34112\", \"status\": null, \"message\": null, \"exitcode\": null, \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, 'java.lang.NullPointerException'),
(458, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'FAIL', '{\"tests\": []}', 1, 'java.lang.NumberFormatException: null'),
(459, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'FAIL', '{\"tests\": [], \"compile\": {\"time\": \"2.029\", \"memory\": \"35536\", \"status\": null, \"message\": null, \"exitcode\": null, \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, 'java.lang.NullPointerException'),
(460, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'FAIL', '{\"tests\": [], \"compile\": {\"time\": \"2.007\", \"memory\": \"32244\", \"status\": null, \"message\": null, \"exitcode\": null, \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, 'java.util.NoSuchElementException'),
(461, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'FAIL', '{\"tests\": [{\"time\": \"0.176\", \"memory\": \"33520\", \"exitcode\": \"1\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"2.061\", \"memory\": \"33520\", \"status\": null, \"message\": null, \"exitcode\": null, \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, 'java.lang.NullPointerException'),
(462, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'DONE', '{\"tests\": [{\"time\": \"0.178\", \"memory\": \"34072\", \"exitcode\": \"1\", \"judgeVerdict\": null}, {\"time\": \"0.175\", \"memory\": \"34072\", \"exitcode\": \"1\", \"judgeVerdict\": null}, {\"time\": \"0.148\", \"memory\": \"34072\", \"exitcode\": \"1\", \"judgeVerdict\": null}, {\"time\": \"0.17\", \"memory\": \"34072\", \"exitcode\": \"1\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"2.038\", \"memory\": \"34072\", \"status\": null, \"message\": null, \"exitcode\": null, \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL),
(463, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'FAIL', '{\"tests\": []}', 1, 'java.util.NoSuchElementException'),
(464, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'FAIL', '{\"tests\": []}', 1, 'java.util.NoSuchElementException'),
(465, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'DONE', '{\"tests\": [{\"time\": \"0.148\", \"memory\": \"45044\", \"exitcode\": \"1\", \"judgeVerdict\": null}, {\"time\": \"0.136\", \"memory\": \"45044\", \"exitcode\": \"1\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"2.025\", \"memory\": \"45044\", \"status\": null, \"message\": null, \"exitcode\": null, \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL),
(466, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'DONE', '{\"tests\": [{\"time\": \"0.156\", \"memory\": \"46196\", \"exitcode\": \"1\", \"judgeVerdict\": null}, {\"time\": \"0.136\", \"memory\": \"46196\", \"exitcode\": \"1\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"2.046\", \"memory\": \"46196\", \"status\": null, \"message\": null, \"exitcode\": null, \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL),
(467, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'FAIL', '{\"tests\": [], \"compile\": {\"time\": \"2.012\", \"memory\": \"38564\", \"status\": null, \"message\": null, \"exitcode\": null, \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, 'java.util.NoSuchElementException'),
(468, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'DONE', '{\"tests\": [{\"time\": \"0.149\", \"memory\": \"38832\", \"exitcode\": \"1\", \"judgeVerdict\": null}, {\"time\": \"0.135\", \"memory\": \"38832\", \"exitcode\": \"1\", \"judgeVerdict\": null}, {\"time\": \"0.123\", \"memory\": \"38832\", \"exitcode\": \"1\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"2.078\", \"memory\": \"38832\", \"status\": null, \"message\": null, \"exitcode\": null, \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL),
(469, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'FAIL', '{\"tests\": [{\"time\": \"0.139\", \"memory\": \"40820\", \"exitcode\": \"1\", \"judgeVerdict\": null}, {\"time\": \"0.136\", \"memory\": \"40820\", \"exitcode\": \"1\", \"judgeVerdict\": null}, {\"time\": \"0.123\", \"memory\": \"38832\", \"exitcode\": \"1\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"2.108\", \"memory\": \"40820\", \"status\": null, \"message\": null, \"exitcode\": null, \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, 'java.lang.NullPointerException'),
(470, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'FAIL', '{\"tests\": [], \"compile\": {\"time\": \"2.008\", \"memory\": \"40028\", \"status\": null, \"message\": null, \"exitcode\": null, \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, 'java.util.NoSuchElementException'),
(471, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'FAIL', '{\"tests\": []}', 1, 'java.lang.NumberFormatException: null'),
(472, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'FAIL', '{\"tests\": [], \"compile\": {\"time\": \"2.195\", \"memory\": \"44440\", \"status\": null, \"message\": null, \"exitcode\": null, \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, 'java.lang.NullPointerException'),
(473, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'FAIL', '{\"tests\": [{\"time\": \"0.142\", \"memory\": \"42852\", \"exitcode\": \"1\", \"judgeVerdict\": null}, {\"time\": \"0.123\", \"memory\": \"38832\", \"exitcode\": \"1\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"2.088\", \"memory\": \"42852\", \"status\": null, \"message\": null, \"exitcode\": null, \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, 'java.lang.NullPointerException'),
(474, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'FAIL', '{\"tests\": [], \"compile\": {\"time\": \"2.107\", \"memory\": \"41432\", \"status\": null, \"message\": null, \"exitcode\": null, \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, 'java.lang.NullPointerException'),
(475, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'DONE', '{\"tests\": [{\"time\": \"0.143\", \"memory\": \"43400\", \"exitcode\": \"1\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.128\", \"memory\": \"43400\", \"exitcode\": \"1\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.126\", \"memory\": \"43400\", \"exitcode\": \"1\", \"judgeVerdict\": \"WA\"}, {\"time\": \"0.102\", \"memory\": \"43400\", \"exitcode\": \"1\", \"judgeVerdict\": \"WA\"}], \"compile\": {\"time\": \"2.095\", \"memory\": \"43400\", \"status\": null, \"message\": null, \"exitcode\": null, \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL),
(476, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'FAIL', '{\"tests\": [{\"time\": \"0.168\", \"memory\": \"42612\", \"exitcode\": \"1\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"2.062\", \"memory\": \"42612\", \"status\": null, \"message\": null, \"exitcode\": null, \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, 'java.lang.NullPointerException'),
(477, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'FAIL', '{\"tests\": [], \"compile\": {\"time\": \"2.039\", \"memory\": \"37952\", \"status\": null, \"message\": null, \"exitcode\": null, \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, 'java.lang.NumberFormatException: null'),
(478, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'FAIL', '{\"tests\": [{\"time\": \"0.146\", \"memory\": \"40256\", \"exitcode\": \"1\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"2.055\", \"memory\": \"40256\", \"status\": null, \"message\": null, \"exitcode\": null, \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, 'java.lang.NullPointerException'),
(479, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'FAIL', '{\"tests\": [{\"time\": \"0.152\", \"memory\": \"39936\", \"exitcode\": \"1\", \"judgeVerdict\": null}, {\"time\": \"0.148\", \"memory\": \"39936\", \"exitcode\": \"1\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"2.01\", \"memory\": \"39936\", \"status\": null, \"message\": null, \"exitcode\": null, \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, 'java.util.NoSuchElementException'),
(480, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'FAIL', '{\"tests\": [], \"compile\": {\"time\": \"2.087\", \"memory\": \"43308\", \"status\": null, \"message\": null, \"exitcode\": null, \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, 'java.util.NoSuchElementException'),
(481, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'FAIL', '{\"tests\": [{\"time\": \"0.154\", \"memory\": \"42296\", \"exitcode\": \"1\", \"judgeVerdict\": null}], \"compile\": {\"time\": \"2.032\", \"memory\": \"42296\", \"status\": null, \"message\": null, \"exitcode\": null, \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, 'java.util.NoSuchElementException'),
(482, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'FAIL', '{\"tests\": [], \"compile\": {\"time\": \"2.05\", \"memory\": \"43092\", \"status\": null, \"message\": null, \"exitcode\": null, \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, 'java.util.NoSuchElementException'),
(483, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'FAIL', '{\"tests\": []}', 1, 'java.util.NoSuchElementException'),
(484, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'DONE', '{\"tests\": [], \"compile\": {\"time\": \"2.074\", \"memory\": \"42348\", \"status\": null, \"message\": null, \"exitcode\": null, \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL),
(485, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'DONE', '{\"tests\": [], \"compile\": {\"time\": \"2.183\", \"memory\": \"40756\", \"status\": null, \"message\": null, \"exitcode\": null, \"additionParams\": \"{\\\"stdout\\\":\\\"\\\",\\\"stderr\\\":\\\"\\\"}\"}}', 1, NULL),
(486, '\nimport java.util.Scanner;\n\npublic class SubmissionFileABC {\n    public static void main(String[] args){\n        Scanner sc = new Scanner(System.in);\n        int a, b;\n        a = sc.nextInt();\n        b = sc.nextInt();\n        System.out.println(Integer.toString(a * b + 2));\n    }\n}\n\n', 'FAIL', '{\"tests\": []}', 1, 'java.util.NoSuchElementException');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `fullname` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`) VALUES
(1, 'admin', 'admin', 'Cuongnm5'),
(2, 'root', 'root', 'test');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_problem`
--

CREATE TABLE `user_problem` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_problem` int(11) NOT NULL,
  `id_problem_submission` int(11) NOT NULL,
  `solved` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `problem`
--
ALTER TABLE `problem`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `problem_submission`
--
ALTER TABLE `problem_submission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_prosub_submission` (`id_submission`),
  ADD KEY `fk_prosub_problem` (`id_problem`);

--
-- Chỉ mục cho bảng `submission`
--
ALTER TABLE `submission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_submission_user` (`user_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_problem`
--
ALTER TABLE `user_problem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_problem` (`id_problem`),
  ADD KEY `id_submission` (`id_problem_submission`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `problem_submission`
--
ALTER TABLE `problem_submission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=461;
--
-- AUTO_INCREMENT cho bảng `submission`
--
ALTER TABLE `submission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=487;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `problem_submission`
--
ALTER TABLE `problem_submission`
  ADD CONSTRAINT `fk_prosub_problem` FOREIGN KEY (`id_problem`) REFERENCES `problem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_prosub_submission` FOREIGN KEY (`id_submission`) REFERENCES `submission` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `submission`
--
ALTER TABLE `submission`
  ADD CONSTRAINT `fk_submission_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `user_problem`
--
ALTER TABLE `user_problem`
  ADD CONSTRAINT `user_problem_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_problem_ibfk_3` FOREIGN KEY (`id_problem_submission`) REFERENCES `problem_submission` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
