-- use quanlysinhvien;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
-- select s.* from subject s where credit = (select max(credit) from subject);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
-- select s.*,  m.mark as `diem` from subject s join mark m on s.subid = m.subid where mark = (select max(mark) from mark);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần

select st.*, avg(mark) as `diem tb`from student st join mark m on st.studentid = m.studentid group by st.studentid order by avg(mark) desc
