# baiTapFlutter
bài tập về các Widgets trong Flutter
### Khái niệm cơ bản về LLM
------------------------

#### LLM là gì?
LLM, viết tắt của "Large Language Model", là các hệ thống AI tiên tiến được thiết kế để hiểu và tạo ra văn bản giống con người dựa trên dữ liệu đầu vào mà chúng nhận được. Các mô hình này đã được đào tạo trên lượng lớn dữ liệu văn bản và có thể thực hiện nhiều nhiệm vụ liên quan đến ngôn ngữ, chẳng hạn như trả lời câu hỏi, thực hiện các cuộc hội thoại, tóm tắt văn bản, dịch ngôn ngữ, v.v.

#### Các loại LLM
LLM có thể được phân loại thành hai loại chính: Base LLM và Instruction tuned LLM.

**Base LLMs**  
Base LLMs được thiết kế để dự đoán từ tiếp theo dựa trên dữ liệu huấn luyện. Chúng không được thiết kế để trả lời các câu hỏi, thực hiện các cuộc hội thoại hoặc giúp giải quyết vấn đề. Ví dụ, nếu bạn đưa ra một base LLM câu "Trong cuốn sách này về LLM, chúng ta sẽ thảo luận", nó có thể hoàn thành câu này và cung cấp cho bạn "Trong cuốn sách này về LLM, chúng tôi sẽ thảo luận về LLM là gì, chúng hoạt động như thế nào và làm thế nào bạn có thể tận dụng chúng trong các ứng dụng của mình.."

**Instruction tuned LLMs**  
Instruction tuned LLMs được huấn luyện để làm theo các hướng dẫn cụ thể. Thay vì chỉ cố gắng hoàn thành văn bản như Base LLMs, chúng sẽ cố gắng trả lời câu hỏi dựa trên dữ liệu đã được huấn luyện. Ví dụ, nếu bạn nhập câu "LLM là gì?", nó sẽ sử dụng dữ liệu đã được đào tạo và cố gắng trả lời câu hỏi.

#### Xây dựng LLM như thế nào?
Quá trình xây dựng LLM bao gồm ba bước chính: thu thập dữ liệu, huấn luyện và đánh giá.

**Thu thập dữ liệu**  
Dữ liệu được thu thập từ nhiều nguồn khác nhau như Wikipedia, tin tức, sách, trang web, v.v.

**Huấn luyện**  
Dữ liệu được làm sạch và xử lý trước khi đưa vào mô hình để huấn luyện. Quá trình này thường mất nhiều thời gian và đòi hỏi nhiều sức mạnh tính toán.

**Đánh giá**  
Hiệu suất của mô hình được đánh giá để xem nó hoạt động tốt như thế nào đối với các nhiệm vụ khác nhau như trả lời câu hỏi, tóm tắt, dịch thuật, v.v.

#### Thuật ngữ liên quan đến LLM
- **Machine Learning (ML)**: Một lĩnh vực nghiên cứu tập trung vào các thuật toán có thể học từ dữ liệu.
- **Model** vs. **AI** vs. **LLM**: Các thuật ngữ này có thể được sử dụng thay thế cho nhau nhưng không phải lúc nào cũng có nghĩa giống nhau. LLM là một loại AI, nhưng không phải tất cả AI đều là LLM.
- **MLM (Masked Language Model)**: Một loại mô hình ngôn ngữ được đào tạo để dự đoán từ tiếp theo trong một chuỗi từ.
- **NLP (Natural Language Processing)**: Một nhánh của AI xử lý sự tương tác giữa máy tính và ngôn ngữ của con người.
- **Label**: Khả năng phân loại một văn bản nhất định.
- **Label Space**: Tập hợp tất cả các nhãn có thể được gán cho một văn bản nhất định.
- **Label Distribution**: Phân bố xác suất trên không gian nhãn.
- **Sentiment Analysis**: Quá trình xác định sắc thái cảm xúc đằng sau một loạt từ.
- **Verbalizer**: Ánh xạ từ nhãn sang từ trong từ vựng của mô hình ngôn ngữ.
- **Reinforcement Learning from Human Feedback (RLHF)**: Một kỹ thuật đào tạo mô hình để thực hiện một nhiệm vụ bằng cách cung cấp cho nó phản hồi của con người.
